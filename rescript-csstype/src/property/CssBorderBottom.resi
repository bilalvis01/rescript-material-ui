type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderBottom: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclaration.constructor ];
  let borderBottomUnion: t => [> CssDeclaration.constructor ];
  let borderBottomString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderBottomFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};