type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.cursor<t>;
let value1: CssPropertyValueType.cursor1<t>;
let value2: CssPropertyValueType.cursor2<t>;
let value3: CssPropertyValueType.cursor3<t>;
let value4: CssPropertyValueType.cursor4<t>;

module DeclarationHelper: {
  let cursor: CssPropertyValueType.cursor<d<'a>>;
  let cursor1: CssPropertyValueType.cursor1<d<'a>>;
  let cursor2: CssPropertyValueType.cursor2<d<'a>>;
  let cursor3: CssPropertyValueType.cursor3<d<'a>>;
  let cursor4: CssPropertyValueType.cursor4<d<'a>>;
  let cursorUnion: t => d<'a>;
  let cursorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let cursorFn: ('data => option<t>) => dFn<'a, 'data>;
};