type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderStyle";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let { 
  borderStyle,
  borderStyle2,
  borderStyle3,
  borderStyle4,
} = module(CssString);

external string: string => t = "%identity";
let value = v => borderStyle(v)->string;
let value2 = (~tb, ~lr) =>
  borderStyle2(~tb, ~lr)
  ->string;
let value3 = (~top, ~lr, ~bottom) =>
  borderStyle3(~top, ~lr, ~bottom)
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  borderStyle4(~top, ~right, ~bottom, ~left)
  ->string;

module DeclarationHelper = {
  let borderStyle = v => 
    declaration(property, value(v));
  let borderStyle2 = (~tb, ~lr) => 
    declaration(property, value2(~tb, ~lr));
  let borderStyle3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let borderStyleUnion = v =>
    declaration(property, v);
  let borderStyleString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderStyleFn = v => declarationFn(property, v);
};