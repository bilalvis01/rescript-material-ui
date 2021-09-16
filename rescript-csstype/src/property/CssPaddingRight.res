open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "paddingRight";

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
  include DeclarationHelper;
  let paddingRightFn = v => declarationFn(property, v);
};