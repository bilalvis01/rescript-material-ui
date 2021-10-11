type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderLeft: CssType.border<CssDeclaration.d<'a>>;
  let borderLeftUnion: t => CssDeclaration.d<'a>;
  let borderLeftString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};