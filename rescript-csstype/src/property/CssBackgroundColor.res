type tag;
type t = CssType.propertyValue<tag>;

let property = "backgroundColor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let { backgroundColor } = module(CssString);

external string: string => t = "%identity";
let value = v => backgroundColor(v)->string;

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