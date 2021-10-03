type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.backgroundStyle<t>;
let value2: CssPropertyValueType.backgroundStyle2<t>;
let value3: CssPropertyValueType.backgroundStyle3<t>;
let value4: CssPropertyValueType.backgroundStyle4<t>;

module DeclarationHelper: {
  let backgroundStyle: CssPropertyValueType.backgroundStyle<d<'a>>;
  let backgroundStyle2: CssPropertyValueType.backgroundStyle2<d<'a>>;
  let backgroundStyle3: CssPropertyValueType.backgroundStyle3<d<'a>>;
  let backgroundStyle4: CssPropertyValueType.backgroundStyle4<d<'a>>;
  let backgroundStyleUnion: t => d<'a>;
  let backgroundStyleString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundStyleFn: ('data => option<t>) => dFn<'a, 'data>;
};