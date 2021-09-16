type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorder.MakeValue({ type t = t }));

module DeclarationHelper: {
  let borderLeft: (
    ~width: CssValueType.lineWidth=?, 
    ~color: CssValueType.color=?, 
    CssValueType.lineStyle_global
  ) => [> CssDeclaration.constructor ];
  let borderLeftUnion: t => [> CssDeclaration.constructor ];
  let borderLeftString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderLeftFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};