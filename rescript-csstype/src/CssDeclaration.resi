@unboxed
type rec boxValue =
  | BoxValue('a): boxValue;

module Make: () => {
  type t = (string, boxValue);

  let make: CssDeclarationConstructor.t => t;
};