module Make = (
  Type: {
    type t;
    type value;
  }
) => {
  external makeDeclarations: Js.Dict.t<Type.value> => Type.t = "%identity";

  module Declaration = CssDeclaration.Make({ type value = Type.value });

  let make = properties => {
    properties
    ->Belt.Array.map(property => {
      switch property {
      | #...CssDeclarationType.t as p => Declaration.make(p)
      }
    })
    ->Js.Dict.fromArray
    ->makeDeclarations
  };
}