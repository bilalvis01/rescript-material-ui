module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.clear_global => Type.t;

  module DeclarationHelper: {
    let clear: CssValueType.clear_global => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let clearFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};