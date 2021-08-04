type selector<'style> = [ | #Selector(string, 'style) ];
type hover<'style> = [ | #Hover('style) ];
type fontFace = [ | #FontFace(CssFontFace.t) ];
type declarations<'style> = [
  | CssDeclarationType.properties
  | selector<'style>
  | hover<'style>
  | fontFace
];