module Make: (
  Type: {
    type declarations;
    type value;
  }
) => {
  type t = (string, Type.value);

  let make: CssSelectorConstructor.t<Type.declarations> => t;
}