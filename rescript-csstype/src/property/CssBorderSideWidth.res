let { borderWidth } = module(CssPropertyValueString);

module MakeValue = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value = v => borderWidth(v)->string;
};