type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftColor: CssType.borderColor<d<'a>>;
  let borderLeftColorUnion: t => d<'a>;
  let borderLeftColorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftColorFn: ('data => option<t>) => dFn<'a, 'data>;
};