type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.backgroundStyle<t>;
let value2: CssType.Property.backgroundStyle2<t>;
let value3: CssType.Property.backgroundStyle3<t>;
let value4: CssType.Property.backgroundStyle4<t>;

module DeclarationHelper: {
  let backgroundStyle: CssType.Property.backgroundStyle<CssType.Syntax.d<'a>>;
  let backgroundStyle2: CssType.Property.backgroundStyle2<CssType.Syntax.d<'a>>;
  let backgroundStyle3: CssType.Property.backgroundStyle3<CssType.Syntax.d<'a>>;
  let backgroundStyle4: CssType.Property.backgroundStyle4<CssType.Syntax.d<'a>>;
  let backgroundStyleUnion: t => CssType.Syntax.d<'a>;
  let backgroundStyleString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundStyleFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};