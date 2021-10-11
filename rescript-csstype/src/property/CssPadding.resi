type tag;
type t = CssType.propertyValue<tag>;

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
let value: CssType.padding<t>;
let value2: CssType.padding2<t>;
let value3: CssType.padding3<t>;
let value4: CssType.padding4<t>;

module DeclarationHelper: {
  let padding: CssType.padding<CssDeclaration.d<'a>>;
  let padding2: CssType.padding2<CssDeclaration.d<'a>>;
  let padding3: CssType.padding3<CssDeclaration.d<'a>>;
  let padding4: CssType.padding4<CssDeclaration.d<'a>>;
  let paddingUnion: t => CssDeclaration.d<'a>;
  let paddingString: string => CssDeclaration.d<'a>;
  let paddingNumber: float => CssDeclaration.d<'a>;
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
  let paddingFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};