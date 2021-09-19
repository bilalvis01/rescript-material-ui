open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderBottomStyle";

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderBottomStyle = v => 
    declaration(property, value(v));
  let borderBottomStyleUnion = v =>
    declaration(property, v);
  let borderBottomStyleString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderBottomStyleFn = v => declarationFn(property, v);
};