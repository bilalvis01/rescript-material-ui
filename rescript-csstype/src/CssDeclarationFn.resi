@unboxed
type rec boxValue<'data> =
  | BoxValue('data => option<'a>): boxValue<'data>;

module Make: () => {  
  type t<'data> = (string, boxValue<'data>);

  let make: CssDeclarationFnConstructor.t<'data> => t<'data>;
};