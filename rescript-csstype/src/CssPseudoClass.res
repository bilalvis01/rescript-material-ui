module Make = (
  Type: {
    type declarations;
    type value;
    let map: ((string, value)) => (string, value);
  }
) => {
  external makeValue: Type.declarations => Type.value = "%identity";

  type t = (string, Type.value);

  let make = v => {
    switch v {
    | #Hover(declarations) => (":hover", makeValue(declarations))
    }
    ->Type.map
  };
}