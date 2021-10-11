type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.borderColor<t>;
let value2: CssType.borderColor2<t>;
let value3: CssType.borderColor3<t>;
let value4: CssType.borderColor4<t>

module DeclarationHelper: {
  let borderColor: CssType.borderColor<CssDeclaration.d<'a>>;
  let borderColor2: CssType.borderColor2<CssDeclaration.d<'a>>;
  let borderColor3: CssType.borderColor3<CssDeclaration.d<'a>>;
  let borderColor4: CssType.borderColor4<CssDeclaration.d<'a>>;
  let borderColorUnion: t => CssDeclaration.d<'a>;
  let borderColorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};