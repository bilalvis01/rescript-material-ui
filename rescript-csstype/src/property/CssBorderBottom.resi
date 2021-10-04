type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderBottom: CssType.border<d<'a>>;
  let borderBottomUnion: t => d<'a>;
  let borderBottomString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomFn: ('data => option<t>) => dFn<'a, 'data>;
};