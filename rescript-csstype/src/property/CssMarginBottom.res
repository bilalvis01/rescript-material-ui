type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "marginBottom";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginBottom = v =>
    declaration(property, value(v));
  let marginBottomUnion = v =>
    declaration(property, v);
  let marginBottomString = v =>
    declaration(property, string(v));
  let marginBottomNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  let marginBottomFn = v => declarationFn(property, v);
};