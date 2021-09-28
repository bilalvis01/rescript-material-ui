type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "backgroundColor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let { backgroundColor as bgCol } = module(CssPropertyValueString);

external string: string => t = "%identity";
let value = v => bgCol(v)->string;

module DeclarationHelper = {
  let backgroundColor = v =>
    declaration(property, value(v));
  let backgroundColorUnion = v =>
    declaration(property, v);
  let backgroundColorString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundColorFn = v => declarationFn(property, v);
};