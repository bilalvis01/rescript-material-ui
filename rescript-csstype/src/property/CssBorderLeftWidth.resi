type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftWidth: CssType.Property.borderWidth<CssType.Syntax.d<'a>>;
  let borderLeftWidthUnion: t => CssType.Syntax.d<'a>;
  let borderLeftWidthString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftWidthFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};