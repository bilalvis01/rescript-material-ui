type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightColor: CssType.Property.borderColor<CssType.d<'a>>;
  let borderRightColorUnion: t => CssType.d<'a>;
  let borderRightColorString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};