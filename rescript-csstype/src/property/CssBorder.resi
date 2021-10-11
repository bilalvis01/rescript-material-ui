type tag;
type t = CssType.propertyValue<tag>;

module MakeValue: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssType.border<Type.t>;
};

include (module type of MakeValue({ type t = t }));

module DeclarationHelper: {
  let border: CssType.border<CssDeclaration.d<'a>>;
  let borderUnion: t => CssDeclaration.d<'a>;
  let borderString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};