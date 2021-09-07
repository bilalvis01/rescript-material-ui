module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.cursorKeyword_global => Type.t;
  let value1: (CssValueType.cursorImage, CssValueType.cursorKeyword) => Type.t;
  let value2: (CssValueType.cursorImage, CssValueType.cursorImage, CssValueType.cursorKeyword) => Type.t;
  let value3: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => Type.t;
  let value4: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => Type.t;

  module DeclarationHelper: {
    let cursor: CssValueType.cursorKeyword_global => [> CssDeclarationConstructor.t ];
    let cursor1: (
      CssValueType.cursorImage, 
      CssValueType.cursorKeyword
    ) => [> CssDeclarationConstructor.t ];
    let cursor2: (
      CssValueType.cursorImage, 
      CssValueType.cursorImage, 
      CssValueType.cursorKeyword
    ) => [> CssDeclarationConstructor.t ];
    let cursor3: (
      CssValueType.cursorImage, 
      CssValueType.cursorImage, 
      CssValueType.cursorImage, 
      CssValueType.cursorKeyword
    ) => [> CssDeclarationConstructor.t ];
    let cursor4: (
      CssValueType.cursorImage, 
      CssValueType.cursorImage, 
      CssValueType.cursorImage, 
      CssValueType.cursorImage, 
      CssValueType.cursorKeyword
    ) => [> CssDeclarationConstructor.t ];
    let cursorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let cursorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let cursorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};