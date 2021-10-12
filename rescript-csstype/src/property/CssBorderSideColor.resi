module MakeValue: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssType.Property.borderColor<Type.t>;
};