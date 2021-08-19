module Make: (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: CssDeclarationFnConstructor.t<'data> => t<'data>;
};