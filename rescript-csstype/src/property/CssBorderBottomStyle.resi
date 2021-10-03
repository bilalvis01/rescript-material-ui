type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomStyle: CssPropertyValueType.borderStyle<d<'a>>;
  let borderBottomStyleUnion: t => d<'a>;
  let borderBottomStyleString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomStyleFn: ('data => option<t>) => dFn<'a, 'data>;
};