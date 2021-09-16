type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginTop: CssValueType.margin_global => [> CssDeclaration.constructor ];
  let marginTopUnion: t => [> CssDeclaration.constructor ];
  let marginTopString: string => [> CssDeclaration.constructor ];
  let marginTopNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let marginTopFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};