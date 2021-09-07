module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.fontFamily_global => Type.t;
  let value2: (
    CssValueType.fontFamily, 
    CssValueType.fontFamily,
  ) => Type.t;
  let value3: (
    CssValueType.fontFamily, 
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => Type.t;
  let value4: (
    CssValueType.fontFamily, 
    CssValueType.fontFamily,
    CssValueType.fontFamily,
    CssValueType.fontFamily,
  ) => Type.t;

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
    let fontFamilyUnion: Type.t => [> CssDeclarationConstructor.t ];
    let fontFamilyString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let fontFamilyFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};