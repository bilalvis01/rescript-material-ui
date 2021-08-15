type rec boxDeclarations<'a> =
  | BoxDeclarations('a): boxDeclarations<'a>;

module Make = (
  Type: {
    type declarations<'data>;
  }
) => {
  type t<'data> = (string, boxDeclarations<Type.declarations<'data>>);

  let make = v => {
    switch v {
    | #Selector(selector, declarations) => (selector, BoxDeclarations(declarations));
    }
  };
}