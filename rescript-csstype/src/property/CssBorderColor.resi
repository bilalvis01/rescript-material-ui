module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.color_global => Type.t;
  let value2: (~tb: CssValueType.color, ~lr: CssValueType.color) => Type.t;
  let value3: (
    ~top: CssValueType.color, 
    ~lr: CssValueType.color, 
    ~bottom: CssValueType.color
  ) => Type.t;
  let value4: (
    ~top: CssValueType.color, 
    ~right: CssValueType.color, 
    ~bottom: CssValueType.color, 
    ~left: CssValueType.color
  ) => Type.t;

  module DeclarationHelper: {
    let borderColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
    let borderColor2: (
      ~tb: CssValueType.color, 
      ~lr: CssValueType.color
    ) => [> CssDeclarationConstructor.t ];
    let borderColor3: (
      ~top: CssValueType.color, 
      ~lr: CssValueType.color, 
      ~bottom: CssValueType.color
    ) => [> CssDeclarationConstructor.t ];
    let borderColor4: (
      ~top: CssValueType.color, 
      ~right: CssValueType.color, 
      ~bottom: CssValueType.color, 
      ~left: CssValueType.color
    ) => [> CssDeclarationConstructor.t ];
    let borderColorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderColorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderColorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};