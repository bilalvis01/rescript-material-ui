module Make: (
  Type: {
    type value;
    type style;
  }
) => {
  let make: array<CssDeclarationType.t> => Type.style;
}