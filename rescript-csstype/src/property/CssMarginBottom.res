open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "marginBottom";

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginBottom = v =>
    declaration(property, value(v));
  let marginBottomUnion = v =>
    declaration(property, v);
  let marginBottomString = v =>
    declaration(property, string(v));
  let marginBottomNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let marginBottomFn = v => declarationFn(property, v);
};