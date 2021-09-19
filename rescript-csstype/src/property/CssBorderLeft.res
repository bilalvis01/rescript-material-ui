open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderLeft";

include CssBorder.MakeValue({
  type t = t;
});

module DeclarationHelper = {
  let borderLeft = (~width=?, ~color=?, style) => 
    declaration(property, value(~width=?width, ~color=?color, style));
  let borderLeftUnion = v =>
    declaration(property, v);
  let borderLeftString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderLeftFn = v => declarationFn(property, v);
};