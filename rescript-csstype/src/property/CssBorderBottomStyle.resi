type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomStyle: CssValueType.lineStyle_global => [> CssDeclaration.constructor ];
  let borderBottomStyleUnion: t => [> CssDeclaration.constructor ];
  let borderBottomStyleString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderBottomStyleFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};