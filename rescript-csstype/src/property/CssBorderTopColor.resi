type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopColor: CssType.borderColor<CssDeclaration.d<'a>>;
  let borderTopColorUnion: t => CssDeclaration.d<'a>;
  let borderTopColorString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopColorFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};