type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "marginLeft";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginLeft = v =>
    declaration(property, value(v));
  let marginLeftUnion = v =>
    declaration(property, v);
  let marginLeftString = v =>
    declaration(property, string(v));
  let marginLeftNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let marginLeftFn = v => declarationFn(property, v);
};