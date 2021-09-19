open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderLeftStyle";

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderLeftStyle = v => 
    declaration(property, value(v));
  let borderLeftStyleUnion = v =>
    declaration(property, v);
  let borderLeftStyleString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderLeftStyleFn = v => declarationFn(property, v);
};