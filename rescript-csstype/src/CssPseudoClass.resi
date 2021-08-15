module Make: (
  Type: {
    type declarations;
    type value;
    let map: ((string, value)) => (string, value);
  }
) => {
  type t = (string, Type.value);

  let make: CssPseudoClassConstructor.t<Type.declarations> => t;
}