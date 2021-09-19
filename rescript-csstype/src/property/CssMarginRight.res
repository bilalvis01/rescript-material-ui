open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "marginRight";

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