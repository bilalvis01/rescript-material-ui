type tag;
type t = CssType.propertyValue<tag>;

let property = "borderTopStyle";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopStyle = v => 
    declaration(property, value(v));
  let borderTopStyleUnion = v =>
    declaration(property, v);
  let borderTopStyleString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderTopStyleFn = v => declarationFn(property, v);
};