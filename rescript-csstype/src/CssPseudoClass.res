module Make = (
  Type: {
    type declarations<'data>;
    let map: ((string, CssPseudoClassConstructor.boxDeclarations<declarations<'data>>)) => 
      (string, CssPseudoClassConstructor.boxDeclarations<declarations<'data>>);
  }
) => {
  type t<'data> = (string, CssPseudoClassConstructor.boxDeclarations<Type.declarations<'data>>);

  let make = v => {
    switch v {
    | #Hover(declarations) => (":hover", BoxDeclarations(declarations))
    }
    ->Type.map
  };
}