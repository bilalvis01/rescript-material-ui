type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.fontFamily<t>;
let value2: CssType.fontFamily2<t>;
let value3: CssType.fontFamily3<t>;
let value4: CssType.fontFamily4<t>;

module DeclarationHelper: {
  let fontFamily: CssType.fontFamily<CssDeclaration.d<'a>>;
  let fontFamily2: CssType.fontFamily2<CssDeclaration.d<'a>>;
  let fontFamily3: CssType.fontFamily3<CssDeclaration.d<'a>>;
  let fontFamily4: CssType.fontFamily4<CssDeclaration.d<'a>>;
  let fontFamilyUnion: t => CssDeclaration.d<'a>;
  let fontFamilyString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let fontFamilyFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};