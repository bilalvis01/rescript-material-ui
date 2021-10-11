type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopStyle: CssType.borderStyle<CssDeclaration.d<'a>>
  let borderTopStyleUnion: t => CssDeclaration.d<'a>;
  let borderTopStyleString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopStyleFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};