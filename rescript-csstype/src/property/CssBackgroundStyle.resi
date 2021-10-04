type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.backgroundStyle<t>;
let value2: CssType.backgroundStyle2<t>;
let value3: CssType.backgroundStyle3<t>;
let value4: CssType.backgroundStyle4<t>;

module DeclarationHelper: {
  let backgroundStyle: CssType.backgroundStyle<d<'a>>;
  let backgroundStyle2: CssType.backgroundStyle2<d<'a>>;
  let backgroundStyle3: CssType.backgroundStyle3<d<'a>>;
  let backgroundStyle4: CssType.backgroundStyle4<d<'a>>;
  let backgroundStyleUnion: t => d<'a>;
  let backgroundStyleString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundStyleFn: ('data => option<t>) => dFn<'a, 'data>;
};