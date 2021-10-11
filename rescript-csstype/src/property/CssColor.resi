type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.color<t>;

module DeclarationHelper: {
  let color: CssType.color<CssDeclaration.d<'a>>;
  let colorUnion: t => CssDeclaration.d<'a>;
  let colorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let colorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};