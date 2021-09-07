module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.bgImage => Type.t;
  let value2: (CssValueType.bgImage, CssValueType.bgImage) => Type.t;
  let value3: (CssValueType.bgImage, CssValueType.bgImage, CssValueType.bgImage) => Type.t;
  let value4: (
    CssValueType.bgImage, 
    CssValueType.bgImage, 
    CssValueType.bgImage, 
    CssValueType.bgImage
  ) => Type.t;

  module DeclarationHelper: {
    let backgroundImage: CssValueType.bgImage => [> CssDeclarationConstructor.t ];
    let backgroundImage2: (
      CssValueType.bgImage, 
      CssValueType.bgImage
    ) => [> CssDeclarationConstructor.t ];
    let backgroundImage3: (
      CssValueType.bgImage, 
      CssValueType.bgImage, 
      CssValueType.bgImage
    ) => [> CssDeclarationConstructor.t ];
    let backgroundImage4: (
      CssValueType.bgImage, 
      CssValueType.bgImage, 
      CssValueType.bgImage, 
      CssValueType.bgImage
    ) => [> CssDeclarationConstructor.t ];
    let backgroundImageUnion: Type.t => [> CssDeclarationConstructor.t ];
    let backgroundImageString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let backgroundImageFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};