type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftStyle: CssType.Property.borderStyle<CssDeclaration.d<'a>>;
  let borderLeftStyleUnion: t => CssDeclaration.d<'a>;
  let borderLeftStyleString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};