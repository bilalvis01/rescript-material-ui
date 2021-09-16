type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginBottom: CssValueType.margin_global => [> CssDeclaration.constructor ];
  let marginBottomUnion: t => [> CssDeclaration.constructor ];
  let marginBottomString: string => [> CssDeclaration.constructor ];
  let marginBottomNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let marginBottomFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};