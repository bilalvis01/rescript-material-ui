module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.position => Type.t;
  let value2: (CssValueType.position, CssValueType.position) => Type.t;
  let value3: (CssValueType.position, CssValueType.position, CssValueType.position) => Type.t;
  let value4: (
    CssValueType.position, 
    CssValueType.position, 
    CssValueType.position, 
    CssValueType.position
  ) => Type.t;

  module DeclarationHelper: {
    let backgroundPosition: CssValueType.position => [> CssDeclarationConstructor.t ];
    let backgroundPosition2: (
      CssValueType.position, 
      CssValueType.position
    ) => [> CssDeclarationConstructor.t ];
    let backgroundPosition3: (
      CssValueType.position, 
      CssValueType.position, 
      CssValueType.position
    ) => [> CssDeclarationConstructor.t ];
    let backgroundPosition4: (
      CssValueType.position, 
      CssValueType.position, 
      CssValueType.position,
      CssValueType.position
    ) => [> CssDeclarationConstructor.t ];
    let backgroundPositionUnion: Type.t => [> CssDeclarationConstructor.t ];
    let backgroundPositionString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let backgroundPositionFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};