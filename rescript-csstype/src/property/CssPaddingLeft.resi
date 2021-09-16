type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingLeft: CssValueType.padding_global => [> CssDeclaration.constructor ];
  let paddingLeftUnion: t => [> CssDeclaration.constructor ];
  let paddingLeftString: string => [> CssDeclaration.constructor ];
  let paddingLeftNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let paddingLeftFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};