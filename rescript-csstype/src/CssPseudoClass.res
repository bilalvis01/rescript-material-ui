type rec boxDeclarations<'a> =
  | BoxDeclarations('a): boxDeclarations<'a>;

module Make = (
  Type: {
    type declarations<'data>;
    let map: ((string, boxDeclarations<declarations<'data>>)) => 
      (string, boxDeclarations<declarations<'data>>);
  }
) => {
  type t<'data> = (string, boxDeclarations<Type.declarations<'data>>);

  let make = v => {
    switch v {
    | #Hover(declarations) => (":hover", BoxDeclarations(declarations))
    }
    ->Type.map
  };
}