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
let value: CssValueType.margin_global => t;
let value2: (~tb: CssValueType.margin, ~lr: CssValueType.margin) => t;
let value3: (~top: CssValueType.margin, ~lr: CssValueType.margin, ~bottom: CssValueType.margin) => t;
let value4: (
  ~top: CssValueType.margin, 
  ~right: CssValueType.margin, 
  ~bottom: CssValueType.margin, 
  ~left: CssValueType.margin,
) => t;
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
  let marginUnion: t => [> CssDeclarationConstructor.t ];
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
  let marginFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};