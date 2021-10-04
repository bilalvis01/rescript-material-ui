let { borderStyle } = module(CssString);

module MakeValue = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = v => borderStyle(v)->string;
};