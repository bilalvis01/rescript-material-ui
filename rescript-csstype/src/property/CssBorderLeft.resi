type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderLeft: CssPropertyValueType.border<d<'a>>;
  let borderLeftUnion: t => d<'a>;
  let borderLeftString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftFn: ('data => option<t>) => dFn<'a, 'data>;
};