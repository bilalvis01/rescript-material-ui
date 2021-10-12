type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderBottom: CssType.Property.border<CssType.d<'a>>;
  let borderBottomUnion: t => CssType.d<'a>;
  let borderBottomString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};