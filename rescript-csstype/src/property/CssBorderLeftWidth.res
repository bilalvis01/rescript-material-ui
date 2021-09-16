open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderLeftWidth";

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderLeftWidth = v => 
    declaration(property, value(v));
  let borderLeftWidthUnion = v =>
    declaration(property, v);
  let borderLeftWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderLeftWidthFn = v => declarationFn(property, v);
};