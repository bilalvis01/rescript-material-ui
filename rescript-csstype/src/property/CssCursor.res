type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "cursor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  cursor,
  cursor1,
  cursor2,
  cursor3,
  cursor4,
} = module(CssPropertyValueString);

external string: string => t = "%identity";
let value = k => cursor(k)->string;
let value1 = (i, k) =>
  cursor1(i, k)
  ->string;
let value2 = (i1, i2, k) =>
  cursor2(i1, i2, k)
  ->string;
let value3 = (i1, i2, i3, k) =>
  cursor3(i1, i2, i3, k)
  ->string;
let value4 = (i1, i2, i3, i4, k) =>
  cursor4(i1, i2, i3, i4, k)
  ->string;

module DeclarationHelper = {
  let cursor = v =>
    declaration(property, value(v));
  let cursor1 = (i, k) =>
    declaration(property, value1(i, k));
  let cursor2 = (i1, i2, k) =>
    declaration(property, value2(i1, i2, k));
  let cursor3 = (i1, i2, i3, k) =>
    declaration(property, value3(i1, i2, i3, k));
  let cursor4 = (i1, i2, i3, i4, k) =>
    declaration(property, value4(i1, i2, i3, i4, k));
  let cursorUnion = v =>
    declaration(property, v);
  let cursorString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let cursorFn = v => declarationFn(property, v);
};