type tag;
type t = CssType.propertyValue<tag>;

let property = "marginRight";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginRight = v =>
    declaration(property, value(v));
  let marginRightUnion = v =>
    declaration(property, v);
  let marginRightString = v =>
    declaration(property, string(v));
  let marginRightNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let marginRightFn = v => declarationFn(property, v);
};