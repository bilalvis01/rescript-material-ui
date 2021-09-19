type tag;
type t = CssValueType.propertyValue<tag>;

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
  let fontFamily: CssValueType.fontFamily_global => [> CssDeclaration.constructor ];
  let fontFamily2: (
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => [> CssDeclaration.constructor ];
  let fontFamily3: (
    CssValueType.fontFamily,
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => [> CssDeclaration.constructor ];
  let fontFamily4: (
    CssValueType.fontFamily,
    CssValueType.fontFamily,
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => [> CssDeclaration.constructor ];
  let fontFamilyUnion: t => [> CssDeclaration.constructor ];
  let fontFamilyString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let fontFamilyFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};