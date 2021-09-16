type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderTop: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclaration.constructor ];
  let borderTopUnion: t => [> CssDeclaration.constructor ];
  let borderTopString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderTopFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};