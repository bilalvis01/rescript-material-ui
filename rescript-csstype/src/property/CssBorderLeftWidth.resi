type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftWidth: CssType.borderWidth<CssDeclaration.d<'a>>;
  let borderLeftWidthUnion: t => CssDeclaration.d<'a>;
  let borderLeftWidthString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};