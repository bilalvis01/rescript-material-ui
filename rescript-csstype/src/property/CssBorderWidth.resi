type t;

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
  let borderWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
  let borderWidth2: (
    ~tb: CssValueType.lineWidth, 
    ~lr: CssValueType.lineWidth
  ) => [> CssDeclarationConstructor.t ];
  let borderWidth3: (
    ~top: CssValueType.lineWidth, 
    ~lr: CssValueType.lineWidth, 
    ~bottom: CssValueType.lineWidth
  ) => [> CssDeclarationConstructor.t ];
  let borderWidth4: (
    ~top: CssValueType.lineWidth, 
    ~right: CssValueType.lineWidth, 
    ~bottom: CssValueType.lineWidth, 
    ~left: CssValueType.lineWidth
  ) => [> CssDeclarationConstructor.t ];
  let borderWidthUnion: t => [> CssDeclarationConstructor.t ];
  let borderWidthString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderWidthFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};