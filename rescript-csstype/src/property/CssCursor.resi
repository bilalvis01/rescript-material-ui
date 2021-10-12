type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.cursor<t>;
let value1: CssType.Property.cursor1<t>;
let value2: CssType.Property.cursor2<t>;
let value3: CssType.Property.cursor3<t>;
let value4: CssType.Property.cursor4<t>;

module DeclarationHelper: {
  let cursor: CssType.Property.cursor<CssType.d<'a>>;
  let cursor1: CssType.Property.cursor1<CssType.d<'a>>;
  let cursor2: CssType.Property.cursor2<CssType.d<'a>>;
  let cursor3: CssType.Property.cursor3<CssType.d<'a>>;
  let cursor4: CssType.Property.cursor4<CssType.d<'a>>;
  let cursorUnion: t => CssType.d<'a>;
  let cursorString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let cursorFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};