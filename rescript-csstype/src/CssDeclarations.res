module Make = (
  Type: {
    type t;
  }
) => {
  external makeDeclarations: Js.Dict.t<CssDeclaration.boxValue> => Type.t = "%identity";

  module Declaration = CssDeclaration.Make();

  let make = properties => {
    properties
    ->Belt.Array.map(property => {
      switch property {
      | #...CssDeclarationConstructor.t as p => Declaration.make(p)
      }
    })
    ->Js.Dict.fromArray
    ->makeDeclarations
  };
}