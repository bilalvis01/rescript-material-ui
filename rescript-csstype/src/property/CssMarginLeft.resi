type t;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginLeft: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
  let marginLeftUnion: t => [> CssDeclarationConstructor.t ];
  let marginLeftString: string => [> CssDeclarationConstructor.t ];
  let marginLeftNumber: float => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let marginLeftFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};