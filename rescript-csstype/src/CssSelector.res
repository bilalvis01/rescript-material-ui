module Make = (
  Type: {
    type declarations;
    type value;
  }
) => {
  type t = (string, Type.value);
  external makeValue: Type.declarations => Type.value = "%identity";

  let make = v => {
    switch v {
    | #Selector(selector, declarations) => (selector, makeValue(declarations));
    }
  };
}