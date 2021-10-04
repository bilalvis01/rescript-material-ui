type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.cursor<t>;
let value1: CssType.cursor1<t>;
let value2: CssType.cursor2<t>;
let value3: CssType.cursor3<t>;
let value4: CssType.cursor4<t>;

module DeclarationHelper: {
  let cursor: CssType.cursor<d<'a>>;
  let cursor1: CssType.cursor1<d<'a>>;
  let cursor2: CssType.cursor2<d<'a>>;
  let cursor3: CssType.cursor3<d<'a>>;
  let cursor4: CssType.cursor4<d<'a>>;
  let cursorUnion: t => d<'a>;
  let cursorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let cursorFn: ('data => option<t>) => dFn<'a, 'data>;
};