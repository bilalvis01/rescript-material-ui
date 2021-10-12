type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopWidth: CssType.Property.borderWidth<CssType.d<'a>>;
  let borderTopWidthUnion: t => CssType.d<'a>;
  let borderTopWidthString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopWidthFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};