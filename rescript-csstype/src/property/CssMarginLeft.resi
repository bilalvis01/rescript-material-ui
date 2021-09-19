type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginLeft: CssValueType.margin_global => [> CssDeclaration.constructor ];
  let marginLeftUnion: t => [> CssDeclaration.constructor ];
  let marginLeftString: string => [> CssDeclaration.constructor ];
  let marginLeftNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let marginLeftFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};