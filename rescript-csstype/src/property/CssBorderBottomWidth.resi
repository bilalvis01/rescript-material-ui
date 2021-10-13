type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomWidth: CssType.Property.borderWidth<CssType.Syntax.d<'a>>;
  let borderBottomWidthUnion: t => CssType.Syntax.d<'a>;
  let borderBottomWidthString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomWidthFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};