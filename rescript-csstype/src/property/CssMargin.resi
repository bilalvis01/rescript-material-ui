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
  let value: CssValueType.margin_global => Type.t;
  let value2: (~tb: CssValueType.margin, ~lr: CssValueType.margin) => Type.t;
  let value3: (~top: CssValueType.margin, ~lr: CssValueType.margin, ~bottom: CssValueType.margin) => Type.t;
  let value4: (
    ~top: CssValueType.margin, 
    ~right: CssValueType.margin, 
    ~bottom: CssValueType.margin, 
    ~left: CssValueType.margin,
  ) => Type.t;
  module DeclarationHelper: {
    let margin: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
    let margin2: (
      ~tb: CssValueType.margin, 
      ~lr: CssValueType.margin
    ) => [> CssDeclarationConstructor.t ];
    let margin3: (
      ~top: CssValueType.margin, 
      ~lr: CssValueType.margin, 
      ~bottom: CssValueType.margin
    ) => [> CssDeclarationConstructor.t ];
    let margin4: (
      ~top: CssValueType.margin, 
      ~right: CssValueType.margin, 
      ~bottom: CssValueType.margin, 
      ~left: CssValueType.margin
    ) => [> CssDeclarationConstructor.t ];
    let marginUnion: Type.t => [> CssDeclarationConstructor.t ];
    let marginString: string => [> CssDeclarationConstructor.t ];
    let marginNumber: float => [> CssDeclarationConstructor.t ];
    /*
    let margin2Number: (
      ~tb: float, 
      ~lr: float,
    ) => [> CssDeclarationConstructor.t ];
    let margin3Number: (
      ~top: float, 
      ~lr: float, 
      ~bottom: float,
    ) => [> CssDeclarationConstructor.t ];
    let margin4Number: (
      ~top: float, 
      ~right: float, 
      ~bottom: float, 
      ~left: float,
    ) => [> CssDeclarationConstructor.t ];
    */
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let marginFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};