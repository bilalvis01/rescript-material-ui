open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderBottomWidth";

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderBottomWidth = v => 
    declaration(property, value(v));
  let borderBottomWidthUnion = v =>
    declaration(property, v);
  let borderBottomWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderBottomWidthFn = v => declarationFn(property, v);
};