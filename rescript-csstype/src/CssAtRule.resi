module Make: (
  Type: {
    type descriptor;
  }
) => {
  type t = (string, Type.descriptor);
  let make: CssAtRuleType.t => t;
};