type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderTopColor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopColor = v => 
    declaration(property, value(v));
  let borderTopColorUnion = v =>
    declaration(property, v);
  let borderTopColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderTopColorFn = v => declarationFn(property, v);
};