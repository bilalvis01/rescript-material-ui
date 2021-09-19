type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftWidth: CssValueType.lineWidth_global => [> CssDeclaration.constructor ];
  let borderLeftWidthUnion: t => [> CssDeclaration.constructor ];
  let borderLeftWidthString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderLeftWidthFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};