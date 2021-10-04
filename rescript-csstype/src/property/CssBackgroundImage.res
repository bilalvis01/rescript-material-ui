type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "backgroundImage";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  backgroundImage as bgImage,
  backgroundImage2 as bgImage2,
  backgroundImage3 as bgImage3,
  backgroundImage4 as bgImage4,
} = module(CssString);

external string: string => t = "%identity";
let value = v => 
  bgImage(v)
  ->string;
let value2 = (v1, v2) => 
  bgImage2(v1, v2)
  ->string;
let value3 = (v1, v2, v3) => 
  bgImage3(v1, v2, v3)
  ->string;
let value4 = (v1, v2, v3, v4) => 
  bgImage4(v1, v2, v3, v4)
  ->string;

module DeclarationHelper = {
  let backgroundImage = v =>
    declaration(property, value(v));
  let backgroundImage2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let backgroundImage3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let backgroundImage4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundImageUnion = v =>
    declaration(property, v);
  let backgroundImageString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundImageFn = v => declarationFn(property, v);
};