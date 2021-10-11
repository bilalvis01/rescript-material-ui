type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderTop: CssType.border<CssDeclaration.d<'a>>;
  let borderTopUnion: t => CssDeclaration.d<'a>;
  let borderTopString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};