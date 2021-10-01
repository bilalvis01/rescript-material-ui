type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomWidth: CssPropertyValueType.borderWidth<d<'a>>;
  let borderBottomWidthUnion: t => d<'a>;
  let borderBottomWidthString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomWidthFn: ('data => option<t>) => dFn<'a, 'data>;
};