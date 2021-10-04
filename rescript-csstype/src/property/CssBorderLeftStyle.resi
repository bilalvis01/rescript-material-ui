type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftStyle: CssType.borderStyle<d<'a>>;
  let borderLeftStyleUnion: t => d<'a>;
  let borderLeftStyleString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftStyleFn: ('data => option<t>) => dFn<'a, 'data>;
};