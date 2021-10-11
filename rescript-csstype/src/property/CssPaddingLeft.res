type tag;
type t = CssType.propertyValue<tag>;

let property = "paddingLeft";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssPaddingSide.MakeValue({ type t = t; });

module DeclarationHelper = {
  let paddingLeft = v =>
    declaration(property, value(v));
  let paddingLeftUnion = v =>
    declaration(property, v);
  let paddingLeftString = v =>
    declaration(property, string(v));
  let paddingLeftNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let paddingLeftFn = v => declarationFn(property, v);
};