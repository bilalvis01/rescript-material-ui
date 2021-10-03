type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "fontWeight";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let { fontWeight } = module(CssPropertyValueString);

external string: string => t = "%identity";
external integer: int => t = "%identity";
let value = v => 
  fontWeight(v)
  ->string;

module DeclarationHelper = {
  let fontWeight = v =>
    declaration(property, value(v));
  let fontWeightUnion = v =>
    declaration(property, v);
  let fontWeightString = v =>
    declaration(property, string(v));
  let fontWeightInteger = v =>
    declaration(property, integer(v));
};

module DeclarationFnHelper = {
  let fontWeightFn = v => declarationFn(property, v);
};