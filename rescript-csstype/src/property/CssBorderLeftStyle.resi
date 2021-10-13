type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftStyle: CssType.Property.borderStyle<CssType.Syntax.d<'a>>;
  let borderLeftStyleUnion: t => CssType.Syntax.d<'a>;
  let borderLeftStyleString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftStyleFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};