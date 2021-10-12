type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopWidth: CssType.Property.borderWidth<CssDeclaration.d<'a>>;
  let borderTopWidthUnion: t => CssDeclaration.d<'a>;
  let borderTopWidthString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};