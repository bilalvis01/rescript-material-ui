module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.color_global => Type.t;

  module DeclarationHelper: {
    let color: CssValueType.color_global => [> CssDeclarationConstructor.t ];
    let colorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let colorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let colorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};