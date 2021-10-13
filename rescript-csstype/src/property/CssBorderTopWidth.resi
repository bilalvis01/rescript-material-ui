type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopWidth: CssType.Property.borderWidth<CssType.Syntax.d<'a>>;
  let borderTopWidthUnion: t => CssType.Syntax.d<'a>;
  let borderTopWidthString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopWidthFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};