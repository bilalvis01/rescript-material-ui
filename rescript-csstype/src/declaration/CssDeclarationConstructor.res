@unboxed
type rec boxValue =
  | BoxValue('a): boxValue;

type t = [ | #Declaration(string, boxValue) ];