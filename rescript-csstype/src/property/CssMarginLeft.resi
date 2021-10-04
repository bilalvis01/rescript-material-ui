type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginLeft: CssType.margin<d<'a>>;
  let marginLeftUnion: t => d<'a>;
  let marginLeftString: string => d<'a>;
  let marginLeftNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let marginLeftFn: ('data => option<t>) => dFn<'a, 'data>;
};