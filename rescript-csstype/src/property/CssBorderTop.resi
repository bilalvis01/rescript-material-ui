type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderTop: CssType.Property.border<CssType.d<'a>>;
  let borderTopUnion: t => CssType.d<'a>;
  let borderTopString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};