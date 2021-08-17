module Make: (
  Type: {
    type value<'data>;
  } 
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: CssImportantConstructor.t<'data> => t<'data>;
}