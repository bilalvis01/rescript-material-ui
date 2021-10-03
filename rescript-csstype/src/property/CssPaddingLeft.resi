type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingLeft: CssPropertyValueType.padding<d<'a>>;
  let paddingLeftUnion: t => d<'a>;
  let paddingLeftString: string => d<'a>;
  let paddingLeftNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let paddingLeftFn: ('data => option<t>) => dFn<'a, 'data>;
};