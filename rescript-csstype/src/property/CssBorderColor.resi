type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.borderColor<t>;
let value2: CssType.Property.borderColor2<t>;
let value3: CssType.Property.borderColor3<t>;
let value4: CssType.Property.borderColor4<t>

module DeclarationHelper: {
  let borderColor: CssType.Property.borderColor<CssType.d<'a>>;
  let borderColor2: CssType.Property.borderColor2<CssType.d<'a>>;
  let borderColor3: CssType.Property.borderColor3<CssType.d<'a>>;
  let borderColor4: CssType.Property.borderColor4<CssType.d<'a>>;
  let borderColorUnion: t => CssType.d<'a>;
  let borderColorString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};