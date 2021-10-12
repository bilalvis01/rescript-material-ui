type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomColor: CssType.Property.borderColor<CssDeclaration.d<'a>>;
  let borderBottomColorUnion: t => CssDeclaration.d<'a>;
  let borderBottomColorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};