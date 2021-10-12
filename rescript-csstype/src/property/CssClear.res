type tag;
type t = CssType.propertyValue<tag>;

let property = "clear";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let { clear } = module(CssString.Property);

external string: string => t = "%identity";
let value = v => clear(v)->string;

module DeclarationHelper = {
  let clear = v => declaration(property, value(v));
  let clearUnion = v => declaration(property, v);
  let clearString = v => declaration(property, string(v));
};

module DeclarationFnHelper = {
  let clearFn = v => declarationFn(property, v);
};