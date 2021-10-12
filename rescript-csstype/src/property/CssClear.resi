type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.clear<t>;

module DeclarationHelper: {
  let clear: CssType.Property.clear<CssType.d<'a>>;
  let clearUnion: t => CssType.d<'a>;
  let clearString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let clearFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};