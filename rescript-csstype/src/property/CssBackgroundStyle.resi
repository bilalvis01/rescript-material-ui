module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.repeatStyle => Type.t;
  let value2: (CssValueType.repeatStyle, CssValueType.repeatStyle) => Type.t;
  let value3: (CssValueType.repeatStyle, CssValueType.repeatStyle, CssValueType.repeatStyle) => Type.t;
  let value4: (
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle, 
    CssValueType.repeatStyle
  ) => Type.t;

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
    let backgroundStyleUnion: Type.t => [> CssDeclarationConstructor.t ];
    let backgroundStyleString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let backgroundStyleFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};