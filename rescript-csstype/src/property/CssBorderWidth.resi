type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssValueType.lineWidth_global => t;
let value2: (~tb: CssValueType.lineWidth, ~lr: CssValueType.lineWidth) => t;
let value3: (
  ~top: CssValueType.lineWidth, 
  ~lr: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth
) => t;
let value4: (
  ~top: CssValueType.lineWidth, 
  ~right: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth, 
  ~left: CssValueType.lineWidth
) => t;

module DeclarationHelper: {
  let borderWidth: CssValueType.lineWidth_global => [> CssDeclaration.constructor ];
  let borderWidth2: (
    ~tb: CssValueType.lineWidth, 
    ~lr: CssValueType.lineWidth
  ) => [> CssDeclaration.constructor ];
  let borderWidth3: (
    ~top: CssValueType.lineWidth, 
    ~lr: CssValueType.lineWidth, 
    ~bottom: CssValueType.lineWidth
  ) => [> CssDeclaration.constructor ];
  let borderWidth4: (
    ~top: CssValueType.lineWidth, 
    ~right: CssValueType.lineWidth, 
    ~bottom: CssValueType.lineWidth, 
    ~left: CssValueType.lineWidth
  ) => [> CssDeclaration.constructor ];
  let borderWidthUnion: t => [> CssDeclaration.constructor ];
  let borderWidthString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderWidthFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};