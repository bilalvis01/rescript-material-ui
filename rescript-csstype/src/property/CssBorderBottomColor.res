open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderBottomColor";

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderBottomColor = v => 
    declaration(property, value(v));
  let borderBottomColorUnion = v =>
    declaration(property, v);
  let borderBottomColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderBottomColorFn = v => declarationFn(property, v);
};