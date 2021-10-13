type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.borderColor<t>;
let value2: CssType.Property.borderColor2<t>;
let value3: CssType.Property.borderColor3<t>;
let value4: CssType.Property.borderColor4<t>

module DeclarationHelper: {
  let borderColor: CssType.Property.borderColor<CssType.Syntax.d<'a>>;
  let borderColor2: CssType.Property.borderColor2<CssType.Syntax.d<'a>>;
  let borderColor3: CssType.Property.borderColor3<CssType.Syntax.d<'a>>;
  let borderColor4: CssType.Property.borderColor4<CssType.Syntax.d<'a>>;
  let borderColorUnion: t => CssType.Syntax.d<'a>;
  let borderColorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderColorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};