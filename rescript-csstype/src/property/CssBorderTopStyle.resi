type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopStyle: CssType.Property.borderStyle<CssType.Syntax.d<'a>>;
  let borderTopStyleUnion: t => CssType.Syntax.d<'a>;
  let borderTopStyleString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopStyleFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};