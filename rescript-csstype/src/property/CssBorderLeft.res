type tag;
type t = CssType.propertyValue<tag>;

let property = "borderLeft";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

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