type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderRightWidth";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderRightWidth = v => 
    declaration(property, value(v));
  let borderRightWidthUnion = v =>
    declaration(property, v);
  let borderRightWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderRightWidthFn = v => declarationFn(property, v);
};