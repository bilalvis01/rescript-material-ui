type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginRight: CssType.margin<d<'a>>;
  let marginRightUnion: t => d<'a>;
  let marginRightString: string => d<'a>;
  let marginRightNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let marginRightFn: ('data => option<t>) => dFn<'a, 'data>;
};