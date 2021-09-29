module MakeValue: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssPropertyValueType.borderStyle<Type.t>;
};