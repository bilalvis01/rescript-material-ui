type tag;
type t = CssValueType.propertyValue<tag>;

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
  let backgroundPosition: CssValueType.position => [> CssDeclaration.constructor ];
  let backgroundPosition2: (
    CssValueType.position, 
    CssValueType.position
  ) => [> CssDeclaration.constructor ];
  let backgroundPosition3: (
    CssValueType.position, 
    CssValueType.position, 
    CssValueType.position
  ) => [> CssDeclaration.constructor ];
  let backgroundPosition4: (
    CssValueType.position, 
    CssValueType.position, 
    CssValueType.position,
    CssValueType.position
  ) => [> CssDeclaration.constructor ];
  let backgroundPositionUnion: t => [> CssDeclaration.constructor ];
  let backgroundPositionString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let backgroundPositionFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};