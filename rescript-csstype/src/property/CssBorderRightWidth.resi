type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightWidth: CssType.Property.borderWidth<CssType.d<'a>>;
  let borderRightWidthUnion: t => CssType.d<'a>;
  let borderRightWidthString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};