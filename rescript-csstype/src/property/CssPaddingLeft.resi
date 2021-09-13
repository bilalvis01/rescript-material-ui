type t;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingLeft: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
  let paddingLeftUnion: t => [> CssDeclarationConstructor.t ];
  let paddingLeftString: string => [> CssDeclarationConstructor.t ];
  let paddingLeftNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let paddingLeftFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};