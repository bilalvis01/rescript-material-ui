type t;
external string: string => t = "%identity";
let value: (
  ~color: CssValueType.color=?,
  ~position: CssValueType.position=?,
  ~size: CssValueType.bgSize=?,
  ~repeat: CssValueType.repeatStyle=?,
  ~attachment: CssValueType.attachment=?,
  ~origin: CssValueType.box=?,
  ~clip: CssValueType.box=?,
  [ | CssValueType.global | CssValueType.bgImage | CssValueType.color ]
) => t;
let value2: (CssValueType.bgLayer, CssValueType.bgLayer) => t;
let value3: (CssValueType.bgLayer, CssValueType.bgLayer, CssValueType.bgLayer) => t;
let value4: (
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer
) => t;

module DeclarationHelper: {
  let background: (
    ~color: CssValueType.color=?,
    ~position: CssValueType.position=?,
    ~size: CssValueType.bgSize=?,
    ~repeat: CssValueType.repeatStyle=?,
    ~attachment: CssValueType.attachment=?,
    ~origin: CssValueType.box=?,
    ~clip: CssValueType.box=?,
    [ | CssValueType.global | CssValueType.bgImage | CssValueType.color]
  ) => [> CssDeclarationConstructor.t ];
  let background2: (CssValueType.bgLayer, CssValueType.bgLayer) => [> CssDeclarationConstructor.t ];
  let background3: (
    CssValueType.bgLayer, 
    CssValueType.bgLayer, 
    CssValueType.bgLayer,
  ) => [> CssDeclarationConstructor.t ];
  let background4: (
    CssValueType.bgLayer, 
    CssValueType.bgLayer, 
    CssValueType.bgLayer, 
    CssValueType.bgLayer,
  ) => [> CssDeclarationConstructor.t ];
  let backgroundUnion: t => [> CssDeclarationConstructor.t ];
  let backgroundString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};