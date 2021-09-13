type t;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderBottom: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclarationConstructor.t ];
  let borderBottomUnion: t => [> CssDeclarationConstructor.t ];
  let borderBottomString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderBottomFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};