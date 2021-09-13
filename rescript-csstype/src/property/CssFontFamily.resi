type t;

external string: string => t = "%identity";
let value: CssValueType.fontFamily_global => t;
let value2: (
  CssValueType.fontFamily, 
  CssValueType.fontFamily,
) => t;
let value3: (
  CssValueType.fontFamily, 
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => t;
let value4: (
  CssValueType.fontFamily, 
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => t;

module DeclarationHelper: {
  let fontFamily: CssValueType.fontFamily_global => [> CssDeclarationConstructor.t ];
  let fontFamily2: (
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => [> CssDeclarationConstructor.t ];
  let fontFamily3: (
    CssValueType.fontFamily,
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => [> CssDeclarationConstructor.t ];
  let fontFamily4: (
    CssValueType.fontFamily,
    CssValueType.fontFamily,
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => [> CssDeclarationConstructor.t ];
  let fontFamilyUnion: t => [> CssDeclarationConstructor.t ];
  let fontFamilyString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let fontFamilyFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};