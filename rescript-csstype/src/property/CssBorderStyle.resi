type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.borderStyle<t>;
let value2: CssType.Property.borderStyle2<t>;
let value3: CssType.Property.borderStyle3<t>;
let value4: CssType.Property.borderStyle4<t>;

module DeclarationHelper: {
  let borderStyle: CssType.Property.borderStyle<CssType.Syntax.d<'a>>;
  let borderStyle2: CssType.Property.borderStyle2<CssType.Syntax.d<'a>>;
  let borderStyle3: CssType.Property.borderStyle3<CssType.Syntax.d<'a>>;
  let borderStyle4: CssType.Property.borderStyle4<CssType.Syntax.d<'a>>;
  let borderStyleUnion: t => CssType.Syntax.d<'a>;
  let borderStyleString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderStyleFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};