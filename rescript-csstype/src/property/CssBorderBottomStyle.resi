type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomStyle: CssType.Property.borderStyle<CssType.d<'a>>;
  let borderBottomStyleUnion: t => CssType.d<'a>;
  let borderBottomStyleString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomStyleFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};