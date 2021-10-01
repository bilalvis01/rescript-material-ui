type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopWidth: CssPropertyValueType.borderWidth<d<'a>>;
  let borderTopWidthUnion: t => d<'a>;
  let borderTopWidthString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderTopWidthFn: ('data => option<t>) => dFn<'a, 'data>;
};