type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "marginTop";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginTop = v =>
    declaration(property, value(v));
  let marginTopUnion = v =>
    declaration(property, v);
  let marginTopString = v =>
    declaration(property, string(v));
  let marginTopNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let marginTopFn = v => declarationFn(property, v);
};