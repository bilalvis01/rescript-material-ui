type tag;
type t = CssType.propertyValue<tag>;

module MakeValue: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssType.Property.border<Type.t>;
};

include (module type of MakeValue({ type t = t }));

module DeclarationHelper: {
  let border: CssType.Property.border<CssType.d<'a>>;
  let borderUnion: t => CssType.d<'a>;
  let borderString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};