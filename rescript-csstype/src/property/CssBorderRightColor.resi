type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightColor: CssType.borderColor<CssDeclaration.d<'a>>;
  let borderRightColorUnion: t => CssDeclaration.d<'a>;
  let borderRightColorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};