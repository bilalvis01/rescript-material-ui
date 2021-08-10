module Make: (
  Type: {
    type declarations;
    type value;
  }
) => {
  type t = (string, Type.value);

  let make: CssSelectorType.t<Type.declarations> => t;
}