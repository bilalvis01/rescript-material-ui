type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "paddingTop";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssPaddingSide.MakeValue({ type t = t; });

module DeclarationHelper = {
  let paddingTop = v =>
    declaration(property, value(v));
  let paddingTopUnion = v =>
    declaration(property, v);
  let paddingTopString = v =>
    declaration(property, string(v));
  let paddingTopNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let paddingTopFn = v => declarationFn(property, v);
};