type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderTop: CssType.border<d<'a>>;
  let borderTopUnion: t => d<'a>;
  let borderTopString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderTopFn: ('data => option<t>) => dFn<'a, 'data>;
};