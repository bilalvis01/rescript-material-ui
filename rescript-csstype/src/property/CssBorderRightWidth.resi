type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightWidth: CssValueType.lineWidth_global => [> CssDeclaration.constructor ];
  let borderRightWidthUnion: t => [> CssDeclaration.constructor ];
  let borderRightWidthString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderRightWidthFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};