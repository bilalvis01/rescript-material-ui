open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "marginTop";

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginTop = v =>
    declaration(property, value(v));
  let marginTopUnion = v =>
    declaration(property, v);
  let marginTopString = v =>
    declaration(property, string(v));
  let marginTopNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let marginTopFn = v => declarationFn(property, v);
};