open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderTopWidth";

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopWidth = v => 
    declaration(property, value(v));
  let borderTopWidthUnion = v =>
    declaration(property, v);
  let borderTopWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderTopWidthFn = v => declarationFn(property, v);
};