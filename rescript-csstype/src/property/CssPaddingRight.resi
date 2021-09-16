type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingRight: CssValueType.padding_global => [> CssDeclaration.constructor ];
  let paddingRightUnion: t => [> CssDeclaration.constructor ];
  let paddingRightString: string => [> CssDeclaration.constructor ];
  let paddingRightNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let paddingRightFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};