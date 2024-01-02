import * as Commonmark from 'commonmark';
export declare function getLinks(parsed: Commonmark.Node): {
    url: string | null;
    text: string | null | undefined;
}[];
