type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderRightColor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderRightColor = v => 
    declaration(property, value(v));
  let borderRightColorUnion = v =>
    declaration(property, v);
  let borderRightColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderRightColorFn = v => declarationFn(property, v);
};