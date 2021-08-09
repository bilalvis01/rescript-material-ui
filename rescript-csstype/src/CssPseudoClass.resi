module Make: (
  Type: {
    type style;
    type value;
    let map: ((string, value)) => (string, value);
  }
) => {
  type t = (string, Type.value);

  let make: CssPseudoClassType.t<Type.style> => t;
}