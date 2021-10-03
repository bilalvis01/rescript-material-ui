type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.fontFamily<t>;
let value2: CssPropertyValueType.fontFamily2<t>;
let value3: CssPropertyValueType.fontFamily3<t>;
let value4: CssPropertyValueType.fontFamily4<t>;

module DeclarationHelper: {
  let fontFamily: CssPropertyValueType.fontFamily<d<'a>>;
  let fontFamily2: CssPropertyValueType.fontFamily2<d<'a>>;
  let fontFamily3: CssPropertyValueType.fontFamily3<d<'a>>;
  let fontFamily4: CssPropertyValueType.fontFamily4<d<'a>>;
  let fontFamilyUnion: t => d<'a>;
  let fontFamilyString: string => d<'a>;
};

module DeclarationFnHelper: {
  let fontFamilyFn: ('data => option<t>) => dFn<'a, 'data>;
};