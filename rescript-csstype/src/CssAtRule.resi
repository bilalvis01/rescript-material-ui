module Make: (
  Type: {
    type descriptor;
  }
) => {
  type t = (string, Type.descriptor);
  let make: CssAtRuleConstructor.t => t;
};