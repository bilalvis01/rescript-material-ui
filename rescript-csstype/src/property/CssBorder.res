type tag;
type t = CssType.propertyValue<tag>;

let property = "border";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let { border as bd } = module(CssString); 

module MakeValue = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = (~width=?, ~color=?, style) =>
    bd(~width=?width, ~color=?color, style)
    ->string;
};

include MakeValue({
  type t = t;
});

module DeclarationHelper = {
  let border = (~width=?, ~color=?, style) => 
    declaration(property, value(~width=?width, ~color=?color, style));
  let borderUnion = v => 
    declaration(property, v);
  let borderString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let borderFn = v => declarationFn(property, v);
};