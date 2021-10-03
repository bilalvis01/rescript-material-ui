type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderRight: CssPropertyValueType.border<d<'a>>;
  let borderRightUnion: t => d<'a>;
  let borderRightString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderRightFn: ('data => option<t>) => dFn<'a, 'data>;
};