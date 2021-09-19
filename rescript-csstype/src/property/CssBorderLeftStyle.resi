type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftStyle: CssValueType.lineStyle_global => [> CssDeclaration.constructor ];
  let borderLeftStyleUnion: t => [> CssDeclaration.constructor ];
  let borderLeftStyleString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderLeftStyleFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};