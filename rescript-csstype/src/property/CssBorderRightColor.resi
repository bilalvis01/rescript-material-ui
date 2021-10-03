type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightColor: CssPropertyValueType.color<d<'a>>;
  let borderRightColorUnion: t => d<'a>;
  let borderRightColorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderRightColorFn: ('data => option<t>) => dFn<'a, 'data>;
};