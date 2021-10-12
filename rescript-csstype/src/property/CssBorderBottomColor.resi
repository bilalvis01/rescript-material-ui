type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomColor: CssType.Property.borderColor<CssType.d<'a>>;
  let borderBottomColorUnion: t => CssType.d<'a>;
  let borderBottomColorString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};