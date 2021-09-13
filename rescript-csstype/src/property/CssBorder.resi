type t;

module MakeValue: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: (
    ~width: CssValueType.lineWidth=?,
    ~color: CssValueType.color=?,
    [ | CssValueType.global | CssValueType.lineStyle ]
  ) => Type.t;
};

include (module type of MakeValue({ type t = t }));

module DeclarationHelper: {
  let border: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclarationConstructor.t ];
  let borderUnion: t => [> CssDeclarationConstructor.t ];
  let borderString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};