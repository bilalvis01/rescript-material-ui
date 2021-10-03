type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderRight";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

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
  let borderRightFn = v => declarationFn(property, v);
};