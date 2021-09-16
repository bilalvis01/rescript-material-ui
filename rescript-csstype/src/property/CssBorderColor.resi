type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.color_global => t;
let value2: (~tb: CssValueType.color, ~lr: CssValueType.color) => t;
let value3: (
  ~top: CssValueType.color, 
  ~lr: CssValueType.color, 
  ~bottom: CssValueType.color
) => t;
let value4: (
  ~top: CssValueType.color, 
  ~right: CssValueType.color, 
  ~bottom: CssValueType.color, 
  ~left: CssValueType.color
) => t;

module DeclarationHelper: {
  let borderColor: CssValueType.color_global => [> CssDeclaration.constructor ];
  let borderColor2: (
    ~tb: CssValueType.color, 
    ~lr: CssValueType.color
  ) => [> CssDeclaration.constructor ];
  let borderColor3: (
    ~top: CssValueType.color, 
    ~lr: CssValueType.color, 
    ~bottom: CssValueType.color
  ) => [> CssDeclaration.constructor ];
  let borderColor4: (
    ~top: CssValueType.color, 
    ~right: CssValueType.color, 
    ~bottom: CssValueType.color, 
    ~left: CssValueType.color
  ) => [> CssDeclaration.constructor ];
  let borderColorUnion: t => [> CssDeclaration.constructor ];
  let borderColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};