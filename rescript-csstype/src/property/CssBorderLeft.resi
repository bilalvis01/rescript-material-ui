type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderLeft: CssType.Property.border<CssType.Syntax.d<'a>>;
  let borderLeftUnion: t => CssType.Syntax.d<'a>;
  let borderLeftString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};