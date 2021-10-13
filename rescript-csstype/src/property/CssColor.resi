type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.color<t>;

module DeclarationHelper: {
  let color: CssType.Property.color<CssType.Syntax.d<'a>>;
  let colorUnion: t => CssType.Syntax.d<'a>;
  let colorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let colorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};