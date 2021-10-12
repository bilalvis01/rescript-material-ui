type tag;
type t = CssType.propertyValue<tag>;

let property = "borderWidth";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  borderWidth,
  borderWidth2,
  borderWidth3,
  borderWidth4,
} = module(CssString.Property);

external string: string => t = "%identity";
external number: float => t = "%identity";
let value = v => 
  borderWidth(v)->string;
let value2 = (~tb, ~lr) => 
  borderWidth2(~tb, ~lr)->string;
let value3 = (~top, ~lr, ~bottom) =>
  borderWidth3(~top, ~lr, ~bottom)->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  borderWidth4(~top, ~right, ~bottom, ~left)->string;

module DeclarationHelper = {
  let borderWidth = v => 
    declaration(property, value(v));
  let borderWidth2 = (~tb, ~lr) => 
    declaration(property, value2(~tb, ~lr));
  let borderWidth3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let borderWidthUnion = v =>
    declaration(property, v);
  let borderWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderWidthFn = v => declarationFn(property, v);
};