type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderBottom: CssType.border<CssDeclaration.d<'a>>;
  let borderBottomUnion: t => CssDeclaration.d<'a>;
  let borderBottomString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};