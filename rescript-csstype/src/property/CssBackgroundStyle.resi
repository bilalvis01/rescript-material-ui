type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.backgroundStyle<t>;
let value2: CssType.backgroundStyle2<t>;
let value3: CssType.backgroundStyle3<t>;
let value4: CssType.backgroundStyle4<t>;

module DeclarationHelper: {
  let backgroundStyle: CssType.backgroundStyle<CssDeclaration.d<'a>>;
  let backgroundStyle2: CssType.backgroundStyle2<CssDeclaration.d<'a>>;
  let backgroundStyle3: CssType.backgroundStyle3<CssDeclaration.d<'a>>;
  let backgroundStyle4: CssType.backgroundStyle4<CssDeclaration.d<'a>>;
  let backgroundStyleUnion: t => CssDeclaration.d<'a>;
  let backgroundStyleString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};