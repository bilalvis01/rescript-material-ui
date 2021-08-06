module Make: (
  Type: {
    type style;
    type value;
  }
) => {
  type t = (string, Type.value);

  let make: CssSelectorType.t<Type.style> => t;
}