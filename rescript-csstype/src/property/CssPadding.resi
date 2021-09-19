type tag;
type t = CssValueType.propertyValue<tag>;

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
  let padding: CssValueType.padding_global => [> CssDeclaration.constructor ];
  let padding2: (
    ~tb: CssValueType.padding, 
    ~lr: CssValueType.padding
  ) => [> CssDeclaration.constructor ];
  let padding3: (
    ~top: CssValueType.padding, 
    ~lr: CssValueType.padding, 
    ~bottom: CssValueType.padding
  ) => [> CssDeclaration.constructor ];
  let padding4: (
    ~top: CssValueType.padding, 
    ~right: CssValueType.padding, 
    ~bottom: CssValueType.padding, 
    ~left: CssValueType.padding
  ) => [> CssDeclaration.constructor ];
  let paddingUnion: t => [> CssDeclaration.constructor ];
  let paddingString: string => [> CssDeclaration.constructor ];
  let paddingNumber: float => [> CssDeclaration.constructor ];
  /*
  let padding2Number: (
    ~tb: float, 
    ~lr: float,
  ) => [> CssDeclaration.constructor ];
  let padding3Number: (
    ~top: float, 
    ~lr: float, 
    ~bottom: float,
  ) => [> CssDeclaration.constructor ];
  let padding4Number: (
    ~top: float, 
    ~right: float, 
    ~bottom: float, 
    ~left: float,
  ) => [> CssDeclaration.constructor ];
  */
};

module DeclarationFnHelper: {
  let paddingFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};