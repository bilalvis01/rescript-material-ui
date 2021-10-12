type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
external integer: int => t = "%identity";
let value: CssType.Property.fontWeight<t>;

module DeclarationHelper: {
  let fontWeight: CssType.Property.fontWeight<CssType.d<'a>>;
  let fontWeightUnion: t => CssType.d<'a>;
  let fontWeightString: string => CssType.d<'a>;
  let fontWeightInteger: int => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let fontWeightFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};