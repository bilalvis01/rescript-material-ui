type tag;
type t = CssType.propertyValue<tag>;

let property = "paddingRight";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssPaddingSide.MakeValue({ type t = t; });

module DeclarationHelper = {
  let paddingRight = v =>
    declaration(property, value(v));
  let paddingRightUnion = v =>
    declaration(property, v);
  let paddingRightString = v =>
    declaration(property, string(v));
  let paddingRightNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let paddingRightFn = v => declarationFn(property, v);
};