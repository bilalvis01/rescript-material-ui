type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderTop: CssType.Property.border<CssType.Syntax.d<'a>>;
  let borderTopUnion: t => CssType.Syntax.d<'a>;
  let borderTopString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};