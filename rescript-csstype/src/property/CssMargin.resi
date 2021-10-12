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
let value: CssType.Property.margin<t>;
let value2: CssType.Property.margin2<t>;
let value3: CssType.Property.margin3<t>;
let value4: CssType.Property.margin4<t>;

module DeclarationHelper: {
  let margin: CssType.Property.margin<CssType.d<'a>>;
  let margin2: CssType.Property.margin2<CssType.d<'a>>;
  let margin3: CssType.Property.margin3<CssType.d<'a>>;
  let margin4: CssType.Property.margin4<CssType.d<'a>>;
  let marginUnion: t => CssType.d<'a>;
  let marginString: string => CssType.d<'a>;
  let marginNumber: float => CssType.d<'a>;
  /*
  let margin2Number: (
    ~tb: float, 
    ~lr: float,
  ) => [> CssType.constructor ];
  let margin3Number: (
    ~top: float, 
    ~lr: float, 
    ~bottom: float,
  ) => [> CssType.constructor ];
  let margin4Number: (
    ~top: float, 
    ~right: float, 
    ~bottom: float, 
    ~left: float,
  ) => [> CssType.constructor ];
  */
};

module DeclarationFnHelper: {
  let marginFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};