type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderRight: CssType.Property.border<CssType.Syntax.d<'a>>;
  let borderRightUnion: t => CssType.Syntax.d<'a>;
  let borderRightString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};