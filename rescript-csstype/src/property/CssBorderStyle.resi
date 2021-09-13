type t;

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

module DeclarationConstructor: {
  type t = [ | #BorderStyle(t) ];
};

module DeclarationFnConstructor: {
  type borderStyle<'data> = [ | #BorderStyleFn('data => option<t>) ];
  type t<'data> = [
    | DeclarationConstructor.t
    | borderStyle<'data>
  ];
};

module DeclarationHelper: {
  let borderStyle: CssValueType.lineStyle_global => [> DeclarationConstructor.t ];
  let borderStyle2: (
    ~tb: CssValueType.lineStyle, 
    ~lr: CssValueType.lineStyle
  ) => [> DeclarationConstructor.t ];
  let borderStyle3: (
    ~top: CssValueType.lineStyle, 
    ~lr: CssValueType.lineStyle, 
    ~bottom: CssValueType.lineStyle
  ) => [> DeclarationConstructor.t ];
  let borderStyle4: (
    ~top: CssValueType.lineStyle, 
    ~right: CssValueType.lineStyle, 
    ~bottom: CssValueType.lineStyle, 
    ~left: CssValueType.lineStyle
  ) => [> DeclarationConstructor.t ];
  let borderStyleUnion: t => [> DeclarationConstructor.t ];
  let borderStyleString: string => [> DeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderStyleFn: ('data => option<t>) => [> DeclarationFnConstructor.borderStyle<'data> ];
};