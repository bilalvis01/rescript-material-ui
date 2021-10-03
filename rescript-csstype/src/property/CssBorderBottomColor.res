type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderBottomColor";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderBottomColor = v => 
    declaration(property, value(v));
  let borderBottomColorUnion = v =>
    declaration(property, v);
  let borderBottomColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderBottomColorFn = v => declarationFn(property, v);
};