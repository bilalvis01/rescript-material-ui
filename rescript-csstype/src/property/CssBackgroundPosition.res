type tag;
type t = CssType.propertyValue<tag>;

let property = "backgroundPosition";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  backgroundPosition as bgPosition,
  backgroundPosition2 as bgPosition2,
  backgroundPosition3 as bgPosition3,
  backgroundPosition4 as bgPosition4,
} = module(CssString.Property);

external string: string => t = "%identity";
let value = v => bgPosition(v)->string;
let value2 = (v1, v2) => 
  bgPosition2(v1, v2)
  ->string;
let value3 = (v1, v2, v3) => 
  bgPosition3(v1, v2, v3)
  ->string;
let value4 = (v1, v2, v3, v4) => 
  bgPosition4(v1, v2, v3, v4)
  ->string;

module DeclarationHelper = {
  let backgroundPosition = v =>
    declaration(property, value(v));
  let backgroundPosition2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let backgroundPosition3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let backgroundPosition4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundPositionUnion = v =>
    declaration(property, v);
  let backgroundPositionString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundPositionFn = v => declarationFn(property, v);
};