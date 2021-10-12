let { borderStyle } = module(CssString.Property);

module MakeValue = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = v => borderStyle(v)->string;
};