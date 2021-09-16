type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.repeatStyle => t;
let value2: (CssValueType.repeatStyle, CssValueType.repeatStyle) => t;
let value3: (CssValueType.repeatStyle, CssValueType.repeatStyle, CssValueType.repeatStyle) => t;
let value4: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => t;

module DeclarationHelper: {
  let backgroundStyle: CssValueType.repeatStyle => [> CssDeclaration.constructor ];
  let backgroundStyle2: (
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle
  ) => [> CssDeclaration.constructor ];
  let backgroundStyle3: (
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle
  ) => [> CssDeclaration.constructor ];
  let backgroundStyle4: (
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle
  ) => [> CssDeclaration.constructor ];
  let backgroundStyleUnion: t => [> CssDeclaration.constructor ];
  let backgroundStyleString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundStyleFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};