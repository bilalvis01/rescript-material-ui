type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightStyle: CssType.lineStyle_global => [> CssDeclaration.constructor ];
  let borderRightStyleUnion: t => [> CssDeclaration.constructor ];
  let borderRightStyleString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderRightStyleFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};