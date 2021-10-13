type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderBottom: CssType.Property.border<CssType.Syntax.d<'a>>;
  let borderBottomUnion: t => CssType.Syntax.d<'a>;
  let borderBottomString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};