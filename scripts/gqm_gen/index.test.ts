import * as Commonmark from "commonmark";
import * as fs from "fs";
import test from "node:test";
import assert from "node:assert";
import { FileLink, Graph, LinkType } from "./types";
import {
  getLinks,
  getFileLinks,
  generateMermaidDiagram,
  getGQMFileLinks,
  getLinkUrl,
} from "./index";

test("getLinkUrl targets built HTML pages", () => {
  assert.strictEqual(
    getLinkUrl(LinkType.GOAL, "find-projects.md"),
    "goals/find-projects.html"
  );
});

test("can get links", () => {
  const node = new Commonmark.Node("paragraph");
  const links = getLinks(node);
  assert(links.length === 0);
});

test("can get links from file", () => {
  const fileLinks: FileLink[] = getFileLinks(
    LinkType.GOAL,
    "../../measuring/goals/"
  );
  assert(fileLinks.length > 0);
});

test("can generate mermaid diagram", () => {
  const graph: Graph = {
    nodes: [],
    edges: [],
  };
  const diagram = generateMermaidDiagram(graph);
  assert(diagram.indexOf("graph LR") > 1);
});

test("can generate mermaid diagram from file", () => {
  const graph = getGQMFileLinks('../../measuring/');
  const diagram = generateMermaidDiagram(graph);
  assert(diagram.indexOf("graph LR;") > 1);
});

test("GQM graph excludes template markdown from link edges", () => {
  const graph = getGQMFileLinks("../../measuring/");
  const hasTemplateEdge = graph.edges.some(
    (e) => e.to?.endsWith("template.md") ?? false
  );
  assert.strictEqual(hasTemplateEdge, false);
});
