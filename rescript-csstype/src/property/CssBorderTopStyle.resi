type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopStyle: CssType.borderStyle<d<'a>>
  let borderTopStyleUnion: t => d<'a>;
  let borderTopStyleString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderTopStyleFn: ('data => option<t>) => dFn<'a, 'data>;
};