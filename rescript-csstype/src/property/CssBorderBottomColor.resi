type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomColor: CssType.borderColor<d<'a>>;
  let borderBottomColorUnion: t => d<'a>;
  let borderBottomColorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomColorFn: ('data => option<t>) => dFn<'a, 'data>;
};