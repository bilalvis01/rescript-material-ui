type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomStyle: CssType.borderStyle<CssDeclaration.d<'a>>;
  let borderBottomStyleUnion: t => CssDeclaration.d<'a>;
  let borderBottomStyleString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};