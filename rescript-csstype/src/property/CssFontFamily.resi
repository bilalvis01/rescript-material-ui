type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.fontFamily<t>;
let value2: CssType.fontFamily2<t>;
let value3: CssType.fontFamily3<t>;
let value4: CssType.fontFamily4<t>;

module DeclarationHelper: {
  let fontFamily: CssType.fontFamily<d<'a>>;
  let fontFamily2: CssType.fontFamily2<d<'a>>;
  let fontFamily3: CssType.fontFamily3<d<'a>>;
  let fontFamily4: CssType.fontFamily4<d<'a>>;
  let fontFamilyUnion: t => d<'a>;
  let fontFamilyString: string => d<'a>;
};

module DeclarationFnHelper: {
  let fontFamilyFn: ('data => option<t>) => dFn<'a, 'data>;
};