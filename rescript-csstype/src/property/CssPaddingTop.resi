type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingTop: CssValueType.padding_global => [> CssDeclaration.constructor ];
  let paddingTopUnion: t => [> CssDeclaration.constructor ];
  let paddingTopString: string => [> CssDeclaration.constructor ];
  let paddingTopNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let paddingTopFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};