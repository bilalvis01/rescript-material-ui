type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

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
let value: CssPropertyValueType.padding<t>;
let value2: CssPropertyValueType.padding2<t>;
let value3: CssPropertyValueType.padding3<t>;
let value4: CssPropertyValueType.padding4<t>;

module DeclarationHelper: {
  let padding: CssPropertyValueType.padding<d<'a>>;
  let padding2: CssPropertyValueType.padding2<d<'a>>;
  let padding3: CssPropertyValueType.padding3<d<'a>>;
  let padding4: CssPropertyValueType.padding4<d<'a>>;
  let paddingUnion: t => d<'a>;
  let paddingString: string => d<'a>;
  let paddingNumber: float => d<'a>;
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
  let paddingFn: ('data => option<t>) => dFn<'a, 'data>;
};