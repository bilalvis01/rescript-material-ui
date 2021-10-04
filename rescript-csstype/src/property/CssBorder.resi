type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

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
  let border: CssType.border<d<'a>>;
  let borderUnion: t => d<'a>;
  let borderString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderFn: ('data => option<t>) => dFn<'a, 'data>;
};