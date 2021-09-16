open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderLeftColor";

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderLeftColor = v => 
    declaration(property, value(v));
  let borderLeftColorUnion = v =>
    declaration(property, v);
  let borderLeftColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderLeftColorFn = v => declarationFn(property, v);
};