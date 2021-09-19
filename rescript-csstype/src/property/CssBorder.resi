type tag;
type t = CssValueType.propertyValue<tag>;

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
  ) => [> CssDeclaration.constructor ];
  let borderUnion: t => [> CssDeclaration.constructor ];
  let borderString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};