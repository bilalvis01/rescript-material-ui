type tag;
type t = CssValueType.propertyValue<tag>;


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
  ) => [> CssDeclaration.constructor ];
  let background2: (CssValueType.bgLayer, CssValueType.bgLayer) => [> CssDeclaration.constructor ];
  let background3: (
    CssValueType.bgLayer, 
    CssValueType.bgLayer, 
    CssValueType.bgLayer,
  ) => [> CssDeclaration.constructor ];
  let background4: (
    CssValueType.bgLayer, 
    CssValueType.bgLayer, 
    CssValueType.bgLayer, 
    CssValueType.bgLayer,
  ) => [> CssDeclaration.constructor ];
  let backgroundUnion: t => [> CssDeclaration.constructor ];
  let backgroundString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let backgroundFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};