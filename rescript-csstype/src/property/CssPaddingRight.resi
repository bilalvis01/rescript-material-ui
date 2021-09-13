type t;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingRight: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
  let paddingRightUnion: t => [> CssDeclarationConstructor.t ];
  let paddingRightString: string => [> CssDeclarationConstructor.t ];
  let paddingRightNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let paddingRightFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};