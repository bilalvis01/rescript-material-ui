module Make = (
  Type: {
    type value;
    type style;
  }
) => {
  external makeStyle: Js.Dict.t<Type.value> => Type.style = "%identity";

  module Declaration = CssDeclaration.Make({ type value = Type.value });

  let make = properties => {
    properties
    ->Belt.Array.map(property => {
      switch property {
      | #...CssDeclarationType.property as p => Declaration.make(p)
      }
    })
    ->Js.Dict.fromArray
    ->makeStyle
  };
}