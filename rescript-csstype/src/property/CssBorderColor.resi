type t;

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
  let borderColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
  let borderColor2: (
    ~tb: CssValueType.color, 
    ~lr: CssValueType.color
  ) => [> CssDeclarationConstructor.t ];
  let borderColor3: (
    ~top: CssValueType.color, 
    ~lr: CssValueType.color, 
    ~bottom: CssValueType.color
  ) => [> CssDeclarationConstructor.t ];
  let borderColor4: (
    ~top: CssValueType.color, 
    ~right: CssValueType.color, 
    ~bottom: CssValueType.color, 
    ~left: CssValueType.color
  ) => [> CssDeclarationConstructor.t ];
  let borderColorUnion: t => [> CssDeclarationConstructor.t ];
  let borderColorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderColorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};