type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.backgroundColor<t>;

module DeclarationHelper: {
  let backgroundColor: CssType.Property.backgroundColor<CssDeclaration.d<'a>>;
  let backgroundColorUnion: t => CssDeclaration.d<'a>;
  let backgroundColorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};