type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
external integer: int => t = "%identity";
let value: CssType.Property.fontWeight<t>;

module DeclarationHelper: {
  let fontWeight: CssType.Property.fontWeight<CssType.Syntax.d<'a>>;
  let fontWeightUnion: t => CssType.Syntax.d<'a>;
  let fontWeightString: string => CssType.Syntax.d<'a>;
  let fontWeightInteger: int => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let fontWeightFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};