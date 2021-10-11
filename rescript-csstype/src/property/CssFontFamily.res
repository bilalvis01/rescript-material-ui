type tag;
type t = CssType.propertyValue<tag>;

let property = "fontFamily";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  fontFamily,
  fontFamily2,
  fontFamily3,
  fontFamily4,
} = module(CssString);

external string: string => t = "%identity";
let value = v => 
  fontFamily(v)
  ->string;
let value2 = (v1, v2) =>
  fontFamily2(v1, v2)
  ->string;
let value3 = (v1, v2, v3) =>
  fontFamily3(v1, v2, v3)
  ->string;
let value4 = (v1, v2, v3, v4) =>
  fontFamily4(v1, v2, v3, v4)
  ->string;

module DeclarationHelper = {
  let fontFamily = v =>
    declaration(property, value(v));
  let fontFamily2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let fontFamily3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let fontFamily4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let fontFamilyUnion = v =>
    declaration(property, v);
  let fontFamilyString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let fontFamilyFn = v => declarationFn(property, v);
};  