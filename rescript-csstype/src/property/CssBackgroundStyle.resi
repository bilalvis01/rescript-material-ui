type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.backgroundStyle<t>;
let value2: CssType.Property.backgroundStyle2<t>;
let value3: CssType.Property.backgroundStyle3<t>;
let value4: CssType.Property.backgroundStyle4<t>;

module DeclarationHelper: {
  let backgroundStyle: CssType.Property.backgroundStyle<CssDeclaration.d<'a>>;
  let backgroundStyle2: CssType.Property.backgroundStyle2<CssDeclaration.d<'a>>;
  let backgroundStyle3: CssType.Property.backgroundStyle3<CssDeclaration.d<'a>>;
  let backgroundStyle4: CssType.Property.backgroundStyle4<CssDeclaration.d<'a>>;
  let backgroundStyleUnion: t => CssDeclaration.d<'a>;
  let backgroundStyleString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};