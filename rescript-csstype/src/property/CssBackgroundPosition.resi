type t;

external string: string => t = "%identity";
let value: CssValueType.position => t;
let value2: (CssValueType.position, CssValueType.position) => t;
let value3: (CssValueType.position, CssValueType.position, CssValueType.position) => t;
let value4: (
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position
) => t;

module DeclarationHelper: {
  let backgroundPosition: CssValueType.position => [> CssDeclarationConstructor.t ];
  let backgroundPosition2: (
    CssValueType.position, 
    CssValueType.position
  ) => [> CssDeclarationConstructor.t ];
  let backgroundPosition3: (
    CssValueType.position, 
    CssValueType.position, 
    CssValueType.position
  ) => [> CssDeclarationConstructor.t ];
  let backgroundPosition4: (
    CssValueType.position, 
    CssValueType.position, 
    CssValueType.position,
    CssValueType.position
  ) => [> CssDeclarationConstructor.t ];
  let backgroundPositionUnion: t => [> CssDeclarationConstructor.t ];
  let backgroundPositionString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundPositionFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};