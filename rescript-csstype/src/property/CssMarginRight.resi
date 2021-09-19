type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginRight: CssValueType.margin_global => [> CssDeclaration.constructor ];
  let marginRightUnion: t => [> CssDeclaration.constructor ];
  let marginRightString: string => [> CssDeclaration.constructor ];
  let marginRightNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let marginRightFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};