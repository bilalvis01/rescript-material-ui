type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginTop: CssPropertyValueType.margin<d<'a>>;
  let marginTopUnion: t => d<'a>;
  let marginTopString: string => d<'a>;
  let marginTopNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let marginTopFn: ('data => option<t>) => dFn<'a, 'data>;
};