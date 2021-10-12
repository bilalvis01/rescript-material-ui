type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftWidth: CssType.Property.borderWidth<CssType.d<'a>>;
  let borderLeftWidthUnion: t => CssType.d<'a>;
  let borderLeftWidthString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};