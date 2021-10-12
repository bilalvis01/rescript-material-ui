type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderRight: CssType.Property.border<CssType.d<'a>>;
  let borderRightUnion: t => CssType.d<'a>;
  let borderRightString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};