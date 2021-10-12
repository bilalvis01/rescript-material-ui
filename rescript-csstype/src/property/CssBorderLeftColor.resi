type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftColor: CssType.Property.borderColor<CssDeclaration.d<'a>>;
  let borderLeftColorUnion: t => CssDeclaration.d<'a>;
  let borderLeftColorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};