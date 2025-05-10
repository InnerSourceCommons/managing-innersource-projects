import * as Commonmark from "commonmark";
import * as fs from "fs";
import * as path from "path";
import { Node, Edge, Graph, Link, LinkType, NodeShape, ArrowType } from "./types.js";
import { FileLink } from "./types.js";

const mdFilePath = process.env.npm_config_markDownFilePath || "../../measuring";
const outputPath = process.env.npm_config_outputPath || "../../measuring/use_gqm.md";

const graph = getGQMFileLinks(mdFilePath);

export function getLinkUrl(linkType: LinkType, file: string) {
  const measuringUrl = "/measuring";
  const url = `${measuringUrl}/${linkType.toLowerCase()}s/${file}`
  return url;
}

export function getGQMFileLinks(mdFilePath: string): Graph {
  const graph: Graph = { nodes: [], edges: [] };
  const paths = {
    [LinkType.GOAL]: `${mdFilePath}/goals/`,
    [LinkType.QUESTION]: `${mdFilePath}/questions/`,
    [LinkType.METRIC]: `${mdFilePath}/metrics/`
  };

  Object.entries(paths).forEach(([type, path]) => {
    const fileLinks = getFileLinks(type as LinkType, path);
    appendToGraph(graph, fileLinks);
  });

  return graph;
}

function appendToGraph(graph: Graph, fileLinks: FileLink[]) {
  fileLinks.forEach(({ file, linkType, label, links }) => {
    if (label) {
      graph.nodes.push({ id: file, type: linkType, shape: NodeShape.RECT, label });
    }
    links.forEach(link => {
      if (file && link.name) {
        graph.edges.push({ from: file, to: link.name, arrowType: "arrow" });
      }
    });
  });
}

// Export for testing
export function getFileLinks(linkType: LinkType, filePath: string): FileLink[] {
  const parser = new Commonmark.Parser();
  return fs.readdirSync(filePath)
    .filter(fileName => !fileName.endsWith("template.md"))
    .map(fileName => {
      const data = fs.readFileSync(`${filePath}/${fileName}`, "utf-8");
      const parsed = parser.parse(data);
      return {
        linkType,
        file: fileName,
        label: getHeading(parsed),
        links: getLinks(parsed)
      };
    });
}

function getHeading(parsed: Commonmark.Node): string {
  const walker = parsed.walker();
  let event, node;
  while ((event = walker.next())) {
    node = event.node;
    if (event.entering && node.type === "heading") {
      return node.lastChild?.literal?.trim() || "No Heading";
    }
  }
  return "No Heading";
}

// Export for testing
export function getLinks(parsed: Commonmark.Node): Link[] {
  const walker = parsed.walker();
  let event, node;
  const links: Link[] = [];
  while ((event = walker.next())) {
    node = event.node;
    if (event.entering && node.type === "link") {
      const destination = node.destination as string;
      if (destination.includes('.md') && !destination.includes('use_gqm')) {
        links.push({
          url: destination,
          text: node.firstChild?.literal as string,
          name: path.parse(destination).base
        });
      }
    }
  }
  return links;
}

function getNodeShapeSyntax(node: Node): string {
  const nodeLabel = node.label;
  switch (node.shape) {
    case 'circ': return `((${nodeLabel}))`;
    case 'roundrect': return `((${nodeLabel}))`;
    case 'diamond': return `{${nodeLabel}}`;
    default: return `[${nodeLabel}]`;
  }
}

export function generateMermaidDiagram(graph: Graph): string {
  console.log('graph', graph);

  const { nodes, edges } = graph;

  const getLinkUrl = (type: LinkType, nodeId: string) => `/measuring/${type.toLowerCase()}s/${nodeId}`;

  let mermaidSyntax = "```mermaid\ngraph LR;\n  subgraph GQM[Goals, Questions, Metrics]\n";
  
  // Add nodes
  mermaidSyntax += "  %% begin nodes\n";
  nodes.forEach(node => {
    mermaidSyntax += `    ${node.id}${getNodeShapeSyntax(node)}\n`;
  });
  
  // Add edges
  mermaidSyntax += "  %% begin edges\n";
  edges.forEach(edge => {
    mermaidSyntax += `    ${edge.from}${ArrowType.ARROW}${edge.to}\n`;
  });
  
  // Add click handlers
  mermaidSyntax += "  %% begin clicks\n";
  nodes.forEach(node => {
    const url = getLinkUrl(node.type, node.id).replace('.md', '');
    mermaidSyntax += `    click ${node.id} "${url}" "${node.label}"\n`;
  });
  
  // Add legend
  const typeLists = {
    [LinkType.GOAL]: nodes.filter(n => n.type === LinkType.GOAL).map(n => n.id).join(','),
    [LinkType.QUESTION]: nodes.filter(n => n.type === LinkType.QUESTION).map(n => n.id).join(','),
    [LinkType.METRIC]: nodes.filter(n => n.type === LinkType.METRIC).map(n => n.id).join(',')
  };
  
  mermaidSyntax += `  end\n  subgraph Legend\n    direction TB\n    goal[Goal]\n    question[Question]\n    metric[Metric]\n\n`;
  mermaidSyntax += `    classDef goals stroke:green,stroke-width:2px;\n    class goal,${typeLists[LinkType.GOAL]} goals\n\n`;
  mermaidSyntax += `    classDef questions stroke:orange,stroke-width:2px;\n    class question,${typeLists[LinkType.QUESTION]} questions\n\n`;
  mermaidSyntax += `    classDef metrics stroke:purple,stroke-width:2px;\n    class metric,${typeLists[LinkType.METRIC]} metrics\n  end\n\`\`\``;
  
  return mermaidSyntax;
}

export function updateGQMDiagram(): void {
  try {
    // Ensure the output directory exists
    const outputDir = path.dirname(outputPath);
    if (!fs.existsSync(outputDir)) {
      fs.mkdirSync(outputDir, { recursive: true });
    }

    const graph = getGQMFileLinks(mdFilePath);
    const mermaidContent = generateMermaidDiagram(graph);
    
    // Check if the output file exists
    if (!fs.existsSync(outputPath)) {
      console.error(`Error: Output file not found at ${outputPath}`);
      process.exit(1);
    }
    
    // Read the existing file
    const existingContent = fs.readFileSync(outputPath, 'utf-8');
    
    // Replace the mermaid block
    const updatedContent = existingContent.replace(
      /```mermaid[\s\S]*?```/,
      mermaidContent
    );
    
    // Write back to file
    fs.writeFileSync(outputPath, updatedContent);
    console.log(`Successfully updated GQM diagram at ${outputPath}`);
  } catch (error) {
    console.error('Error updating GQM diagram:', error);
    process.exit(1);
  }
}

// If running directly, update the diagram
if (import.meta.url === `file://${process.argv[1]}`) {
  updateGQMDiagram();
}
