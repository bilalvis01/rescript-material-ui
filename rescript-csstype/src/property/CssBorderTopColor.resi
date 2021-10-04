type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopColor: CssType.borderColor<d<'a>>;
  let borderTopColorUnion: t => d<'a>;
  let borderTopColorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderTopColorFn: ('data => option<t>) => dFn<'a, 'data>;
};