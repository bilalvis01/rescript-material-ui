module Make = (
  Type: {
    type t;
  }
) => {
  external makeDeclarations: Js.Dict.t<CssDeclarationConstructor.boxValue> => Type.t = "%identity";

  module Declaration = CssDeclaration;

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