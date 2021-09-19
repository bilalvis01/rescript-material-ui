type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.cursorKeyword_global => t;
let value1: (CssValueType.cursorImage, CssValueType.cursorKeyword) => t;
let value2: (CssValueType.cursorImage, CssValueType.cursorImage, CssValueType.cursorKeyword) => t;
let value3: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => t;
let value4: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => t;

module DeclarationHelper: {
  let cursor: CssValueType.cursorKeyword_global => [> CssDeclaration.constructor ];
  let cursor1: (
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclaration.constructor ];
  let cursor2: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclaration.constructor ];
  let cursor3: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclaration.constructor ];
  let cursor4: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclaration.constructor ];
  let cursorUnion: t => [> CssDeclaration.constructor ];
  let cursorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let cursorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};