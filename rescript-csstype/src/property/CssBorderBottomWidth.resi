type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomWidth: CssValueType.lineWidth_global => [> CssDeclaration.constructor ];
  let borderBottomWidthUnion: t => [> CssDeclaration.constructor ];
  let borderBottomWidthString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderBottomWidthFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};