let {
  color
} = module(CssPropertyValueString);

module MakeValue = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = v => color(v)->string;
};