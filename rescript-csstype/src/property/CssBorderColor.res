type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderColor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  borderColor,
  borderColor2,
  borderColor3,
  borderColor4,
} = module(CssString);

external string: string => t = "%identity";
let value = v => borderColor(v)->string;
let value2 = (~tb, ~lr) => borderColor2(~tb, ~lr)->string;
let value3 = (~top, ~lr, ~bottom) => 
  borderColor3(~top, ~lr, ~bottom)->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  borderColor4(~top, ~right, ~bottom, ~left)
  ->string;

module DeclarationHelper = {
  let borderColor = v => 
    declaration(property, value(v));
  let borderColor2 = (~tb, ~lr) => 
    declaration(property, value2(~tb, ~lr));
  let borderColor3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let borderColor4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let borderColorUnion = v =>
    declaration(property, v);
  let borderColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderColorFn = v => declarationFn(property, v);
};