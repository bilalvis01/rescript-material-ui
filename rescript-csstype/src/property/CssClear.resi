type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.clear<t>;

module DeclarationHelper: {
  let clear: CssType.clear<CssDeclaration.d<'a>>;
  let clearUnion: t => CssDeclaration.d<'a>;
  let clearString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let clearFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};