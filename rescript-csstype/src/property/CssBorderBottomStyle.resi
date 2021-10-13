type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomStyle: CssType.Property.borderStyle<CssType.Syntax.d<'a>>;
  let borderBottomStyleUnion: t => CssType.Syntax.d<'a>;
  let borderBottomStyleString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomStyleFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};