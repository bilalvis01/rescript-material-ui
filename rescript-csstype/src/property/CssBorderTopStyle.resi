type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopStyle: CssType.Property.borderStyle<CssType.d<'a>>;
  let borderTopStyleUnion: t => CssType.d<'a>;
  let borderTopStyleString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopStyleFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};