type t = (string, CssDeclarationConstructor.boxValue);

let make = declaration => {
  switch declaration {
  | #Declaration(name, value) => (name, value)
  };
};