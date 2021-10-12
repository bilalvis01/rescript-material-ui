type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderLeft: CssType.Property.border<CssType.d<'a>>;
  let borderLeftUnion: t => CssType.d<'a>;
  let borderLeftString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};