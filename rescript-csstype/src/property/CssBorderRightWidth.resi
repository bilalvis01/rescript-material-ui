type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightWidth: CssType.Property.borderWidth<CssDeclaration.d<'a>>;
  let borderRightWidthUnion: t => CssDeclaration.d<'a>;
  let borderRightWidthString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};