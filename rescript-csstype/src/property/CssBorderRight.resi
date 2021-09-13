type t

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderRight: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclarationConstructor.t ];
  let borderRightUnion: t => [> CssDeclarationConstructor.t ];
  let borderRightString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderRightFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};