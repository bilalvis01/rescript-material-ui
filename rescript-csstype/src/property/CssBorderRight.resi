type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderRight: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclaration.constructor ];
  let borderRightUnion: t => [> CssDeclaration.constructor ];
  let borderRightString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderRightFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};