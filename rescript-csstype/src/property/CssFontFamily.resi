type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.fontFamily<t>;
let value2: CssType.Property.fontFamily2<t>;
let value3: CssType.Property.fontFamily3<t>;
let value4: CssType.Property.fontFamily4<t>;

module DeclarationHelper: {
  let fontFamily: CssType.Property.fontFamily<CssDeclaration.d<'a>>;
  let fontFamily2: CssType.Property.fontFamily2<CssDeclaration.d<'a>>;
  let fontFamily3: CssType.Property.fontFamily3<CssDeclaration.d<'a>>;
  let fontFamily4: CssType.Property.fontFamily4<CssDeclaration.d<'a>>;
  let fontFamilyUnion: t => CssDeclaration.d<'a>;
  let fontFamilyString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let fontFamilyFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};