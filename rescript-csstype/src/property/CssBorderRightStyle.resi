type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightStyle: CssPropertyValueType.borderStyle<d<'a>>;
  let borderRightStyleUnion: t => d<'a>;
  let borderRightStyleString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderRightStyleFn: ('data => option<t>) => dFn<'a, 'data>;
};