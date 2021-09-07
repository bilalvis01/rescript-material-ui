module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  /*
  // this is jss' array based syntax
  let number2: (~tb: float, ~lr: float) => Type.t;
  let number3: (~top: float, ~lr: float, ~bottom: float) => Type.t;
  let number4: (
    ~top: float, 
    ~right: float, 
    ~bottom: float, 
    ~left: float,
  ) => Type.t;
  */
  let value: CssValueType.padding_global => Type.t;
  let value2: (~tb: CssValueType.padding, ~lr: CssValueType.padding) => Type.t;
  let value3: (~top: CssValueType.padding, ~lr: CssValueType.padding, ~bottom: CssValueType.padding) => Type.t;
  let value4: (
    ~top: CssValueType.padding, 
    ~right: CssValueType.padding, 
    ~bottom: CssValueType.padding, 
    ~left: CssValueType.padding
  ) => Type.t;

  module DeclarationHelper: {
    let padding: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
    let padding2: (
      ~tb: CssValueType.padding, 
      ~lr: CssValueType.padding
    ) => [> CssDeclarationConstructor.t ];
    let padding3: (
      ~top: CssValueType.padding, 
      ~lr: CssValueType.padding, 
      ~bottom: CssValueType.padding
    ) => [> CssDeclarationConstructor.t ];
    let padding4: (
      ~top: CssValueType.padding, 
      ~right: CssValueType.padding, 
      ~bottom: CssValueType.padding, 
      ~left: CssValueType.padding
    ) => [> CssDeclarationConstructor.t ];
    let paddingUnion: Type.t => [> CssDeclarationConstructor.t ];
    let paddingString: string => [> CssDeclarationConstructor.t ];
    let paddingNumber: float => [> CssDeclarationConstructor.t ];
    /*
    let padding2Number: (
      ~tb: float, 
      ~lr: float,
    ) => [> CssDeclarationConstructor.t ];
    let padding3Number: (
      ~top: float, 
      ~lr: float, 
      ~bottom: float,
    ) => [> CssDeclarationConstructor.t ];
    let padding4Number: (
      ~top: float, 
      ~right: float, 
      ~bottom: float, 
      ~left: float,
    ) => [> CssDeclarationConstructor.t ];
    */
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let paddingFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};