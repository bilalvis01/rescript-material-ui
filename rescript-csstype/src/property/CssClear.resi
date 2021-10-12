type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.clear<t>;

module DeclarationHelper: {
  let clear: CssType.Property.clear<CssDeclaration.d<'a>>;
  let clearUnion: t => CssDeclaration.d<'a>;
  let clearString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let clearFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};