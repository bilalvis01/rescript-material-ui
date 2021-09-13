type t;

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
  let backgroundStyle: CssValueType.repeatStyle => [> CssDeclarationConstructor.t ];
  let backgroundStyle2: (
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle
  ) => [> CssDeclarationConstructor.t ];
  let backgroundStyle3: (
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle
  ) => [> CssDeclarationConstructor.t ];
  let backgroundStyle4: (
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle
  ) => [> CssDeclarationConstructor.t ];
  let backgroundStyleUnion: t => [> CssDeclarationConstructor.t ];
  let backgroundStyleString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundStyleFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};