type t;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderLeft: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclarationConstructor.t ];
  let borderLeftUnion: t => [> CssDeclarationConstructor.t ];
  let borderLeftString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderLeftFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};