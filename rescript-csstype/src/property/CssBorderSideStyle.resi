module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.lineStyle_global => Type.t;
};