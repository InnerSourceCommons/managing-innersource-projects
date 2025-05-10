import * as Commonmark from "commonmark";
import { Graph, Link, LinkType } from "./types.js";
import { FileLink } from "./types.js";
export declare function getLinkUrl(linkType: LinkType, file: string): string;
export declare function getGQMFileLinks(mdFilePath: string): Graph;
export declare function getFileLinks(linkType: LinkType, filePath: string): FileLink[];
export declare function getLinks(parsed: Commonmark.Node): Link[];
export declare function generateMermaidDiagram(graph: Graph): string;
export declare function updateGQMDiagram(): void;
