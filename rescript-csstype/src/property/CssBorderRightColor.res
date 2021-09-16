open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderRightColor";

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderRightColor = v => 
    declaration(property, value(v));
  let borderRightColorUnion = v =>
    declaration(property, v);
  let borderRightColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderRightColorFn = v => declarationFn(property, v);
};