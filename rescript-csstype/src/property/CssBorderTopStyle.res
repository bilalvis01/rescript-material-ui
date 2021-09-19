open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderTopStyle";

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopStyle = v => 
    declaration(property, value(v));
  let borderTopStyleUnion = v =>
    declaration(property, v);
  let borderTopStyleString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderTopStyleFn = v => declarationFn(property, v);
};