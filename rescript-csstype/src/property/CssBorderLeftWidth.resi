type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftWidth: CssPropertyValueType.borderWidth<d<'a>>;
  let borderLeftWidthUnion: t => d<'a>;
  let borderLeftWidthString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftWidthFn: ('data => option<t>) => dFn<'a, 'data>;
};