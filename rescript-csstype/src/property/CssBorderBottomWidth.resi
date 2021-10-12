type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomWidth: CssType.Property.borderWidth<CssType.d<'a>>;
  let borderBottomWidthUnion: t => CssType.d<'a>;
  let borderBottomWidthString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomWidthFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};