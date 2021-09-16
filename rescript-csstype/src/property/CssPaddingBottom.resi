type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingBottom: CssValueType.padding_global => [> CssDeclaration.constructor ];
  let paddingBottomUnion: t => [> CssDeclaration.constructor ];
  let paddingBottomString: string => [> CssDeclaration.constructor ];
  let paddingBottomNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let paddingBottomFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};