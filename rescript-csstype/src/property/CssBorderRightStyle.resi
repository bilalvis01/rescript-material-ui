type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightStyle: CssType.Property.borderStyle<CssType.d<'a>>;
  let borderRightStyleUnion: t => CssType.d<'a>;
  let borderRightStyleString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightStyleFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};