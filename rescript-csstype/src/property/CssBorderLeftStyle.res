type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "borderLeftStyle";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderLeftStyle = v => 
    declaration(property, value(v));
  let borderLeftStyleUnion = v =>
    declaration(property, v);
  let borderLeftStyleString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderLeftStyleFn = v => declarationFn(property, v);
};