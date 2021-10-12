type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomWidth: CssType.Property.borderWidth<CssDeclaration.d<'a>>;
  let borderBottomWidthUnion: t => CssDeclaration.d<'a>;
  let borderBottomWidthString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};