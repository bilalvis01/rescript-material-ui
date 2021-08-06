module Make: (
  Type: {
    type value;
    type style;
  }
) => {
  let make: array<CssDeclarationType.property> => Type.style;
}