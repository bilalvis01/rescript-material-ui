type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderRight: CssType.border<CssDeclaration.d<'a>>;
  let borderRightUnion: t => CssDeclaration.d<'a>;
  let borderRightString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};