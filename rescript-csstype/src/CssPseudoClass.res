module Make = (
  Type: {
    type style;
    type value;
  }
) => {
  external makeValue: Type.style => Type.value = "%identity";

  type t = (string, Type.value);

  let make = v => {
    switch v {
    | #Hover(style) => ("&:hover", makeValue(style))
    }
  };
}