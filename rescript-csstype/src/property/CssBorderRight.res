open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderRight";

include CssBorder.MakeValue({
  type t = t;
});

module DeclarationHelper = {
  let borderRight = (~width=?, ~color=?, style) => 
    declaration(property, value(~width=?width, ~color=?color, style));
  let borderRightUnion = v =>
    declaration(property, v);
  let borderRightString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderRightFn = v => declarationFn(property, v);
};