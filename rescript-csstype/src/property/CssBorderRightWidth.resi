type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightWidth: CssType.Property.borderWidth<CssType.Syntax.d<'a>>;
  let borderRightWidthUnion: t => CssType.Syntax.d<'a>;
  let borderRightWidthString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightWidthFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};