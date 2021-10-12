type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.fontFamily<t>;
let value2: CssType.Property.fontFamily2<t>;
let value3: CssType.Property.fontFamily3<t>;
let value4: CssType.Property.fontFamily4<t>;

module DeclarationHelper: {
  let fontFamily: CssType.Property.fontFamily<CssType.d<'a>>;
  let fontFamily2: CssType.Property.fontFamily2<CssType.d<'a>>;
  let fontFamily3: CssType.Property.fontFamily3<CssType.d<'a>>;
  let fontFamily4: CssType.Property.fontFamily4<CssType.d<'a>>;
  let fontFamilyUnion: t => CssType.d<'a>;
  let fontFamilyString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let fontFamilyFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};