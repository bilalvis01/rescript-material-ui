open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "marginLeft";

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginLeft = v =>
    declaration(property, value(v));
  let marginLeftUnion = v =>
    declaration(property, v);
  let marginLeftString = v =>
    declaration(property, string(v));
  let marginLeftNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let marginLeftFn = v => declarationFn(property, v);
};