type t;

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
  let cursor: CssValueType.cursorKeyword_global => [> CssDeclarationConstructor.t ];
  let cursor1: (
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclarationConstructor.t ];
  let cursor2: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclarationConstructor.t ];
  let cursor3: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclarationConstructor.t ];
  let cursor4: (
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorImage, 
    CssValueType.cursorKeyword
  ) => [> CssDeclarationConstructor.t ];
  let cursorUnion: t => [> CssDeclarationConstructor.t ];
  let cursorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let cursorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};