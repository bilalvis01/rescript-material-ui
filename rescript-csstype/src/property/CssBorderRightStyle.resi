type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightStyle: CssType.Property.borderStyle<CssType.Syntax.d<'a>>;
  let borderRightStyleUnion: t => CssType.Syntax.d<'a>;
  let borderRightStyleString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightStyleFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};