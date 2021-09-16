open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderBottom";

include CssBorder.MakeValue({
  type t = t;
});

module DeclarationHelper = {
  let borderBottom = (~width=?, ~color=?, style) => 
    declaration(property, value(~width=?width, ~color=?color, style));
  let borderBottomUnion = v =>
    declaration(property, v);
  let borderBottomString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderBottomFn = v => declarationFn(property, v);
};