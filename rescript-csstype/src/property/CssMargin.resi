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
  let margin: CssValueType.margin_global => [> CssDeclaration.constructor ];
  let margin2: (
    ~tb: CssValueType.margin, 
    ~lr: CssValueType.margin
  ) => [> CssDeclaration.constructor ];
  let margin3: (
    ~top: CssValueType.margin, 
    ~lr: CssValueType.margin, 
    ~bottom: CssValueType.margin
  ) => [> CssDeclaration.constructor ];
  let margin4: (
    ~top: CssValueType.margin, 
    ~right: CssValueType.margin, 
    ~bottom: CssValueType.margin, 
    ~left: CssValueType.margin
  ) => [> CssDeclaration.constructor ];
  let marginUnion: t => [> CssDeclaration.constructor ];
  let marginString: string => [> CssDeclaration.constructor ];
  let marginNumber: float => [> CssDeclaration.constructor ];
  /*
  let margin2Number: (
    ~tb: float, 
    ~lr: float,
  ) => [> CssDeclaration.constructor ];
  let margin3Number: (
    ~top: float, 
    ~lr: float, 
    ~bottom: float,
  ) => [> CssDeclaration.constructor ];
  let margin4Number: (
    ~top: float, 
    ~right: float, 
    ~bottom: float, 
    ~left: float,
  ) => [> CssDeclaration.constructor ];
  */
};

module DeclarationFnHelper: {
  let marginFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};