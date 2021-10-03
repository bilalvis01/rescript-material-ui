type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingTop: CssPropertyValueType.padding<d<'a>>;
  let paddingTopUnion: t => d<'a>;
  let paddingTopString: string => d<'a>;
  let paddingTopNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let paddingTopFn: ('data => option<t>) => dFn<'a, 'data>;
};