type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingBottom: CssPropertyValueType.padding<d<'a>>;
  let paddingBottomUnion: t => d<'a>;
  let paddingBottomString: string => d<'a>;
  let paddingBottomNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let paddingBottomFn: ('data => option<t>) => dFn<'a, 'data>;
};