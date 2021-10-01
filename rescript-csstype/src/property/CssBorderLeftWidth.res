type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderLeftWidth";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderLeftWidth = v => 
    declaration(property, value(v));
  let borderLeftWidthUnion = v =>
    declaration(property, v);
  let borderLeftWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderLeftWidthFn = v => declarationFn(property, v);
};