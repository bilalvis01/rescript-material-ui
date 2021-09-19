open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderRightWidth";

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderRightWidth = v => 
    declaration(property, value(v));
  let borderRightWidthUnion = v =>
    declaration(property, v);
  let borderRightWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderRightWidthFn = v => declarationFn(property, v);
};