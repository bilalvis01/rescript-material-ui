type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopStyle: CssType.lineStyle_global => [> CssDeclaration.constructor ];
  let borderTopStyleUnion: t => [> CssDeclaration.constructor ];
  let borderTopStyleString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderTopStyleFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};