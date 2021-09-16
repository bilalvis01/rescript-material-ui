open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "paddingBottom";

include CssPaddingSide.MakeValue({ type t = t; });

module DeclarationHelper = {
  let paddingBottom = v =>
    declaration(property, value(v));
  let paddingBottomUnion = v =>
    declaration(property, v);
  let paddingBottomString = v =>
    declaration(property, string(v));
  let paddingBottomNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let paddingBottomFn = v => declarationFn(property, v);
};