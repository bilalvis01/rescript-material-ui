type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightStyle: CssType.borderStyle<CssDeclaration.d<'a>>;
  let borderRightStyleUnion: t => CssDeclaration.d<'a>;
  let borderRightStyleString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};