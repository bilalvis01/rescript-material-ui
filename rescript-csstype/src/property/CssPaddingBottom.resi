type t;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingBottom: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
  let paddingBottomUnion: t => [> CssDeclarationConstructor.t ];
  let paddingBottomString: string => [> CssDeclarationConstructor.t ];
  let paddingBottomNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let paddingBottomFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};