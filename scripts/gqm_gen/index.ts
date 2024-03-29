import * as Commonmark from "commonmark";
import * as fs from "fs";
import * as path from "path";
import { Node, Edge, Graph, Link, LinkType, NodeShape, ArrowType } from "./types";
import { FileLink } from "./types";

const mdFilePath = process.env.npm_config_markDownFilePath || "../../measuring";

const graph = getGQMFileLinks(mdFilePath);

export function getLinkUrl(linkType: LinkType, file: string) {
  const measuringUrl = "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring";
  const url = `${measuringUrl}/${linkType.toLowerCase()}s/${file}`
  return url;
}

export function getGQMFileLinks(mdFilePath: string) {
  const graph: Graph = {
    nodes: [],
    edges: [],
  };

  const goalsPath = `${mdFilePath}/goals/`;
  const questionsPath = `${mdFilePath}/questions/`;
  const metricsPath = `${mdFilePath}/metrics/`;
  
  const goalFileLinks: FileLink[] = getFileLinks(LinkType.GOAL, goalsPath);
  appendToGraph(graph, goalFileLinks);

  const questionFileLinks: FileLink[] = getFileLinks(
    LinkType.QUESTION,
    questionsPath
  );
  appendToGraph(graph, questionFileLinks);

  const metricFileLinks: FileLink[] = getFileLinks(LinkType.METRIC, metricsPath);
  appendToGraph(graph, metricFileLinks);

  return graph;
}

export function appendToGraph(graph: Graph, fileLinks: FileLink[]) {
  fileLinks.forEach((fileLink) => {
    const node: Node = {
      id: fileLink.file,
      type: fileLink.linkType,
      shape: NodeShape.RECT,
      label: fileLink.label,
    };
    if (node.label) {
      graph.nodes.push(node);
    }

    fileLink.links.forEach((link) => {
      const edge: Edge = {
        from: fileLink.file,
        to: link.name,
        arrowType: "arrow",
      };
      if(edge.from && edge.to){
        graph.edges.push(edge);
      }
    });
  });
  return graph
}

export function getFileLinks(linkType: LinkType, filePath: string) {
  const parser = new Commonmark.Parser();

  const goalFiles = fs.readdirSync(filePath);
  let fileLinks: FileLink[] = [];
  goalFiles.forEach((fileName) => {
    if (fileName.endsWith("template.md")) return;
    const data = fs.readFileSync(`${filePath}/${fileName}`, "utf-8");
    const parsed = parser.parse(data);
    const label = getHeading(parsed);
    const links = getLinks(parsed);

    const fileLink: FileLink = {
      linkType: linkType,
      file: fileName,
      label: label,
      links,
    };
    fileLinks.push(fileLink);
  });
  return fileLinks;
}

export function getHeading(parsed: Commonmark.Node) {
  const walker = parsed.walker();
  let event, node;
  let heading: string = "No Heading";
  while ((event = walker.next())) {
    node = event.node;
    if (event.entering && node.type === "heading") {
      heading = node.lastChild?.literal as string;
      break;
    }
  }
  return heading.trim();
}

export function getLinks(parsed: Commonmark.Node) {
  const walker = parsed.walker();
  let event, node;
  const links: Link[] = [];
  while ((event = walker.next())) {
    node = event.node;
    if (event.entering && node.type === "link") {
      const destination = node.destination as string;
      const text = node.firstChild?.literal as string;
      const link: Link = {
        url: destination,
        text: text,
        name: path.parse(destination).base,
      };

      if (link.url.indexOf('.md') > -1 && link.url.indexOf('use_gqm') === -1) {
        links.push(link);
      }
    }
  }
  return links;
}

export function getNodeShapeSyntax(node: Node) {
  const nodeUrl = getLinkUrl(node.type, node.id)
  const nodeLabel = `${node.label}`;
  switch (node.shape) {
    case 'rect':
      return `[${nodeLabel}]`;
    case 'circ':
      return `((${nodeLabel}))`;
    case 'roundrect':
      return `((${nodeLabel}))`;
    case 'diamond':
      return `{${nodeLabel}}`;
    default:
      return `[${nodeLabel}]`;
  }
}

export function generateMermaidDiagram(graph: Graph) {
  const nodes = graph.nodes;
  const edges = graph.edges;

  let mermaidSyntax = `\`\`\`mermaid\ngraph LR;\n
    subgraph GQM[Goals, Questions, Metrics]\n
  `;
  
  mermaidSyntax += "  %% begin nodes\n";
  nodes.forEach((node) => {
    const nodeSyntax = getNodeShapeSyntax(node)
    mermaidSyntax += `    ${node.id}${nodeSyntax}\n`
  });
  mermaidSyntax += "    %% end nodes\n\n";
  
  mermaidSyntax += "    %% begin edges\n";

  edges.forEach((edge) => {
    const arrowSyntax: string = ArrowType.ARROW;
    mermaidSyntax += `    ${edge.from}${arrowSyntax}${edge.to}\n`;
  });

  mermaidSyntax += "    %% end edges\n\n";

  mermaidSyntax += "    %% begin clicks\n"

  nodes.forEach((node) => {
    const nodeUrl = getLinkUrl(node.type, node.id);
    mermaidSyntax += `    click ${node.id} "${nodeUrl}" "${node.label}"\n`; 
  });

  mermaidSyntax += "    %% end clicks\n\n"

  const goalsList = nodes.filter(n => n.type == LinkType.GOAL).map(n => `${n.id}`).join(',');
  const questionsList = nodes.filter(n => n.type == LinkType.QUESTION).map(n => `${n.id}`).join(',');
  const metricsList = nodes.filter(n => n.type == LinkType.METRIC).map(n => `${n.id}`).join(',');
  
  mermaidSyntax += "  end";
  mermaidSyntax += `
      subgraph Legend
        direction TB

        goal[Goal]
        question[Question]
        metric[Metric]

        classDef goals stroke:green,stroke-width:2px;
        class goal,${goalsList} goals

        classDef questions stroke:orange,stroke-width:2px;
        class question,${questionsList} questions

        classDef metrics stroke:purple,stroke-width:2px;
        class metric,${metricsList} metrics
      end  
  `;
  mermaidSyntax += "\n```";
  return mermaidSyntax;
}

console.log(generateMermaidDiagram(graph))
