module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value: CssValueType.fontWeight_global => Type.t;

  module DeclarationHelper: {
    let fontWeight: CssValueType.fontWeight_global => [> CssDeclarationConstructor.t ];
    let fontWeightUnion: Type.t => [> CssDeclarationConstructor.t ];
    let fontWeightString: string => [> CssDeclarationConstructor.t ];
    let fontWeightNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let fontWeightFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};