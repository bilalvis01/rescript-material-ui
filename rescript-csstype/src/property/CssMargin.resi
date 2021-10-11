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
let value: CssType.margin<t>;
let value2: CssType.margin2<t>;
let value3: CssType.margin3<t>;
let value4: CssType.margin4<t>;

module DeclarationHelper: {
  let margin: CssType.margin<CssDeclaration.d<'a>>;
  let margin2: CssType.margin2<CssDeclaration.d<'a>>;
  let margin3: CssType.margin3<CssDeclaration.d<'a>>;
  let margin4: CssType.margin4<CssDeclaration.d<'a>>;
  let marginUnion: t => CssDeclaration.d<'a>;
  let marginString: string => CssDeclaration.d<'a>;
  let marginNumber: float => CssDeclaration.d<'a>;
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
  let marginFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};