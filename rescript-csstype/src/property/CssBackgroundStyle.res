type tag;
type t = CssType.propertyValue<tag>;

let property = "backgroundStyle";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  backgroundStyle as bgStyle,
  backgroundStyle2 as bgStyle2,
  backgroundStyle3 as bgStyle3,
  backgroundStyle4 as bgStyle4,
} = module(CssString.Property);

external string: string => t = "%identity";
let value = v => 
  bgStyle(v)
  ->string;
let value2 = (v1, v2) => 
  bgStyle2(v1, v2)
  ->string;
let value3 = (v1, v2, v3) => 
  bgStyle3(v1, v2, v3)
  ->string;
let value4 = (v1, v2, v3, v4) => 
  bgStyle4(v1, v2, v3, v4)
  ->string;

module DeclarationHelper = {
  let backgroundStyle = v =>
    declaration(property, value(v));
  let backgroundStyle2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let backgroundStyle3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let backgroundStyle4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundStyleUnion = v =>
    declaration(property, v);
  let backgroundStyleString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundStyleFn = v => declarationFn(property, v);
};
