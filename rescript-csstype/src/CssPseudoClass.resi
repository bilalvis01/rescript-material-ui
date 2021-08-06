module Make: (
  Type: {
    type style;
    type value;
  }
) => {
  type t = (string, Type.value);

  let make: CssPseudoClassType.t<Type.style> => t;
}