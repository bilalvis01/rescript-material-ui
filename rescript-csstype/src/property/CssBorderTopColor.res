open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderTopColor";

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopColor = v => 
    declaration(property, value(v));
  let borderTopColorUnion = v =>
    declaration(property, v);
  let borderTopColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderTopColorFn = v => declarationFn(property, v);
};