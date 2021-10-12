type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftStyle: CssType.Property.borderStyle<CssType.d<'a>>;
  let borderLeftStyleUnion: t => CssType.d<'a>;
  let borderLeftStyleString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};