type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingLeft: CssType.Property.padding<CssDeclaration.d<'a>>;
  let paddingLeftUnion: t => CssDeclaration.d<'a>;
  let paddingLeftString: string => CssDeclaration.d<'a>;
  let paddingLeftNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let paddingLeftFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};