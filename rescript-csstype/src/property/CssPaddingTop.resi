type t;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingTop: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
  let paddingTopUnion: t => [> CssDeclarationConstructor.t ];
  let paddingTopString: string => [> CssDeclarationConstructor.t ];
  let paddingTopNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let paddingTopFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};