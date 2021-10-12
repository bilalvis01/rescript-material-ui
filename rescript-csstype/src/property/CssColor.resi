type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.color<t>;

module DeclarationHelper: {
  let color: CssType.Property.color<CssType.d<'a>>;
  let colorUnion: t => CssType.d<'a>;
  let colorString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let colorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};