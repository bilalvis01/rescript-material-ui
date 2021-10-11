type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.cursor<t>;
let value1: CssType.cursor1<t>;
let value2: CssType.cursor2<t>;
let value3: CssType.cursor3<t>;
let value4: CssType.cursor4<t>;

module DeclarationHelper: {
  let cursor: CssType.cursor<CssDeclaration.d<'a>>;
  let cursor1: CssType.cursor1<CssDeclaration.d<'a>>;
  let cursor2: CssType.cursor2<CssDeclaration.d<'a>>;
  let cursor3: CssType.cursor3<CssDeclaration.d<'a>>;
  let cursor4: CssType.cursor4<CssDeclaration.d<'a>>;
  let cursorUnion: t => CssDeclaration.d<'a>;
  let cursorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let cursorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};