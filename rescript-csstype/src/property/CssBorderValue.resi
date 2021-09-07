module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: (
    ~width: CssValueType.lineWidth=?,
    ~color: CssValueType.color=?,
    [ | CssValueType.global | CssValueType.lineStyle ]
  ) => Type.t;
};