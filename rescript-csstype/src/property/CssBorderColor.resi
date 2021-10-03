type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.borderColor<t>;
let value2: (~tb: CssType.color, ~lr: CssType.color) => t;
let value3: (
  ~top: CssType.color, 
  ~lr: CssType.color, 
  ~bottom: CssType.color
) => t;
let value4: (
  ~top: CssType.color, 
  ~right: CssType.color, 
  ~bottom: CssType.color, 
  ~left: CssType.color
) => t;

module DeclarationHelper: {
  let borderColor: CssType.color_global => [> CssDeclaration.constructor ];
  let borderColor2: (
    ~tb: CssType.color, 
    ~lr: CssType.color
  ) => [> CssDeclaration.constructor ];
  let borderColor3: (
    ~top: CssType.color, 
    ~lr: CssType.color, 
    ~bottom: CssType.color
  ) => [> CssDeclaration.constructor ];
  let borderColor4: (
    ~top: CssType.color, 
    ~right: CssType.color, 
    ~bottom: CssType.color, 
    ~left: CssType.color
  ) => [> CssDeclaration.constructor ];
  let borderColorUnion: t => [> CssDeclaration.constructor ];
  let borderColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};