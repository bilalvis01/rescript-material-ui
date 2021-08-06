module Make = (
  Type: {
    type style;
    type value;
  }
) => {
  type t = (string, Type.value);
  external makeValue: Type.style => Type.value = "%identity";

  let make = v => {
    switch v {
    | #Selector(selector, style) => (selector, makeValue(style));
    }
  };
}