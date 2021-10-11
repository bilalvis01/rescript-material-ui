type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.borderStyle<t>;
let value2: CssType.borderStyle2<t>;
let value3: CssType.borderStyle3<t>;
let value4: CssType.borderStyle4<t>;

module DeclarationHelper: {
  let borderStyle: CssType.borderStyle<CssDeclaration.d<'a>>;
  let borderStyle2: CssType.borderStyle2<CssDeclaration.d<'a>>;
  let borderStyle3: CssType.borderStyle3<CssDeclaration.d<'a>>;
  let borderStyle4: CssType.borderStyle4<CssDeclaration.d<'a>>;
  let borderStyleUnion: t => CssDeclaration.d<'a>;
  let borderStyleString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};