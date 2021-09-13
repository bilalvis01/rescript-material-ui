type t;

external string: string => t = "%identity";
external number: float => t = "%identity";
/*
// this is jss' array based syntax
let number2: (~tb: float, ~lr: float) => t;
let number3: (~top: float, ~lr: float, ~bottom: float) => t;
let number4: (
  ~top: float, 
  ~right: float, 
  ~bottom: float, 
  ~left: float,
) => t;
*/
let value: CssValueType.padding_global => t;
let value2: (~tb: CssValueType.padding, ~lr: CssValueType.padding) => t;
let value3: (~top: CssValueType.padding, ~lr: CssValueType.padding, ~bottom: CssValueType.padding) => t;
let value4: (
  ~top: CssValueType.padding, 
  ~right: CssValueType.padding, 
  ~bottom: CssValueType.padding, 
  ~left: CssValueType.padding
) => t;

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
  let paddingUnion: t => [> CssDeclarationConstructor.t ];
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
  let paddingFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};