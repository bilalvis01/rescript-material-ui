type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightWidth: CssType.borderWidth<d<'a>>;
  let borderRightWidthUnion: t => d<'a>;
  let borderRightWidthString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderRightWidthFn: ('data => option<t>) => dFn<'a, 'data>;
};