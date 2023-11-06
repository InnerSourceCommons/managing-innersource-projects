export enum LinkType {
  GOAL = "goal",
  QUESTION = "question",
  METRIC = "metric",
}
export enum ArrowType {
  ARROW = "-->",
  DASHED = "-.->",
  THICK = "==>",
}
export enum NodeShape {
  RECT = "rect",
  CIRC = "circ",
  ROUNDRECT = "roundrect",
  DIAMOND = "diamond",
}
export type Link = {
  url: string;
  text: string;
  name: string;
};
export type FileLink = {
  linkType: LinkType;
  file: string;
  label: string;
  links: Link[];
};
export type Node = {
  id: string;
  shape: string;
  label: string;
};
export type Edge = {
  arrowType: string;
  from: string | null;
  to: string | null;
};
export type Graph = {
  nodes: Node[];
  edges: Edge[];
};
