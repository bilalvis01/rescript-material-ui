type t;

external string: string => t = "%identity";
let value: CssValueType.color => t;

module DeclarationHelper: {
  let backgroundColor: CssValueType.color => [> CssDeclarationConstructor.t ];
  let backgroundColorUnion: t => [> CssDeclarationConstructor.t ];
  let backgroundColorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundColorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};