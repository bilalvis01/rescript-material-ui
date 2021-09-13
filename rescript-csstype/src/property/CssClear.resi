type t;

external string: string => t = "%identity";
let value: CssValueType.clear_global => t;

module DeclarationHelper: {
  let clear: CssValueType.clear_global => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let clearFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};