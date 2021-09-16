type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopWidth: CssValueType.lineWidth_global => [> CssDeclaration.constructor ];
  let borderTopWidthUnion: t => [> CssDeclaration.constructor ];
  let borderTopWidthString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderTopWidthFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};