type t;

external string: string => t = "%identity";
let value: CssValueType.color_global => t;

module DeclarationHelper: {
  let color: CssValueType.color_global => [> CssDeclarationConstructor.t ];
  let colorUnion: t => [> CssDeclarationConstructor.t ];
  let colorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let colorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};