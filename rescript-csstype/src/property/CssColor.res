type tag;
type t = CssType.propertyValue<tag>;

let property = "color";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let { color } = module(CssString.Property);

external string: string => t = "%identity";
let value = v => color(v)->string;

module DeclarationHelper = {
  let color = v =>
    declaration(property, value(v));
  let colorUnion = v =>
    declaration(property, v);
  let colorString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let colorFn = v => declarationFn(property, v);
};