type t;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginTop: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
  let marginTopUnion: t => [> CssDeclarationConstructor.t ];
  let marginTopString: string => [> CssDeclarationConstructor.t ];
  let marginTopNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let marginTopFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};