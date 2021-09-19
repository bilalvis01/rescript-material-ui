type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.bgImage => t;
let value2: (CssValueType.bgImage, CssValueType.bgImage) => t;
let value3: (CssValueType.bgImage, CssValueType.bgImage, CssValueType.bgImage) => t;
let value4: (
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage
) => t;

module DeclarationHelper: {
  let backgroundImage: CssValueType.bgImage => [> CssDeclaration.constructor ];
  let backgroundImage2: (
    CssValueType.bgImage, 
    CssValueType.bgImage
  ) => [> CssDeclaration.constructor ];
  let backgroundImage3: (
    CssValueType.bgImage, 
    CssValueType.bgImage, 
    CssValueType.bgImage
  ) => [> CssDeclaration.constructor ];
  let backgroundImage4: (
    CssValueType.bgImage, 
    CssValueType.bgImage, 
    CssValueType.bgImage, 
    CssValueType.bgImage
  ) => [> CssDeclaration.constructor ];
  let backgroundImageUnion: t => [> CssDeclaration.constructor ];
  let backgroundImageString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let backgroundImageFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};