type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingRight: CssPropertyValueType.padding<d<'a>>;
  let paddingRightUnion: t => d<'a>;
  let paddingRightString: string => d<'a>;
  let paddingRightNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let paddingRightFn: ('data => option<t>) => dFn<'a, 'data>;
};