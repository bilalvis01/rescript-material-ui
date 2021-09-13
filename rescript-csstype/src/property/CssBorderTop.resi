type t;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderTop: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclarationConstructor.t ];
  let borderTopUnion: t => [> CssDeclarationConstructor.t ];
  let borderTopString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderTopFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};