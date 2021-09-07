module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.color_global => Type.t;
};