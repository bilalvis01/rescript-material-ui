type t;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginBottom: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
  let marginBottomUnion: t => [> CssDeclarationConstructor.t ];
  let marginBottomString: string => [> CssDeclarationConstructor.t ];
  let marginBottomNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let marginBottomFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};