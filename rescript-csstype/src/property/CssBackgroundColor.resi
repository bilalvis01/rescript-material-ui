type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.backgroundColor<t>;

module DeclarationHelper: {
  let backgroundColor: CssType.Property.backgroundColor<CssType.Syntax.d<'a>>;
  let backgroundColorUnion: t => CssType.Syntax.d<'a>;
  let backgroundColorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundColorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};