type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.cursor<t>;
let value1: CssType.Property.cursor1<t>;
let value2: CssType.Property.cursor2<t>;
let value3: CssType.Property.cursor3<t>;
let value4: CssType.Property.cursor4<t>;

module DeclarationHelper: {
  let cursor: CssType.Property.cursor<CssType.Syntax.d<'a>>;
  let cursor1: CssType.Property.cursor1<CssType.Syntax.d<'a>>;
  let cursor2: CssType.Property.cursor2<CssType.Syntax.d<'a>>;
  let cursor3: CssType.Property.cursor3<CssType.Syntax.d<'a>>;
  let cursor4: CssType.Property.cursor4<CssType.Syntax.d<'a>>;
  let cursorUnion: t => CssType.Syntax.d<'a>;
  let cursorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let cursorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};