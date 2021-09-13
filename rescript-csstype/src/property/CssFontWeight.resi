type t;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssValueType.fontWeight_global => t;

module DeclarationHelper: {
  let fontWeight: CssValueType.fontWeight_global => [> CssDeclarationConstructor.t ];
  let fontWeightUnion: t => [> CssDeclarationConstructor.t ];
  let fontWeightString: string => [> CssDeclarationConstructor.t ];
  let fontWeightNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let fontWeightFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};