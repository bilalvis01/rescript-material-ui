type t;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginRight: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
  let marginRightUnion: t => [> CssDeclarationConstructor.t ];
  let marginRightString: string => [> CssDeclarationConstructor.t ];
  let marginRightNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let marginRightFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};