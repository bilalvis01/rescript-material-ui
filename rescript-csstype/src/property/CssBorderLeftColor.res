type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderLeftColor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderLeftColor = v => 
    declaration(property, value(v));
  let borderLeftColorUnion = v =>
    declaration(property, v);
  let borderLeftColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderLeftColorFn = v => declarationFn(property, v);
};