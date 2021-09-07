module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.color => Type.t;

  module DeclarationHelper: {
    let backgroundColor: CssValueType.color => [> CssDeclarationConstructor.t ];
    let backgroundColorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let backgroundColorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let backgroundColorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};