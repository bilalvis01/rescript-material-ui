type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
external integer: int => t = "%identity";
let value: CssType.fontWeight<t>;

module DeclarationHelper: {
  let fontWeight: CssType.fontWeight<CssDeclaration.d<'a>>;
  let fontWeightUnion: t => CssDeclaration.d<'a>;
  let fontWeightString: string => CssDeclaration.d<'a>;
  let fontWeightInteger: int => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let fontWeightFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};