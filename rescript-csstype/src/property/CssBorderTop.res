open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderTop";

include CssBorder.MakeValue({
  type t = t;
});

module DeclarationHelper = {
  let borderTop = (~width=?, ~color=?, style) => 
    declaration(property, value(~width=?width, ~color=?color, style));
  let borderTopUnion = v =>
    declaration(property, v);
  let borderTopString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderTopFn = v => declarationFn(property, v);
};