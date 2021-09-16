type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.lineStyle_global => t;
let value2: (~tb: CssValueType.lineStyle, ~lr: CssValueType.lineStyle) => t;
let value3: (
  ~top: CssValueType.lineStyle, 
  ~lr: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle
) => t;
let value4: (
  ~top: CssValueType.lineStyle, 
  ~right: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle, 
  ~left: CssValueType.lineStyle
) => t;

module DeclarationHelper: {
  let borderStyle: CssValueType.lineStyle_global => [> CssDeclaration.constructor ];
  let borderStyle2: (
    ~tb: CssValueType.lineStyle, 
    ~lr: CssValueType.lineStyle
  ) => [> CssDeclaration.constructor ];
  let borderStyle3: (
    ~top: CssValueType.lineStyle, 
    ~lr: CssValueType.lineStyle, 
    ~bottom: CssValueType.lineStyle
  ) => [> CssDeclaration.constructor ];
  let borderStyle4: (
    ~top: CssValueType.lineStyle, 
    ~right: CssValueType.lineStyle, 
    ~bottom: CssValueType.lineStyle, 
    ~left: CssValueType.lineStyle
  ) => [> CssDeclaration.constructor ];
  let borderStyleUnion: t => [> CssDeclaration.constructor ];
  let borderStyleString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderStyleFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};