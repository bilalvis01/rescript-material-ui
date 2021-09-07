@unboxed
type rec boxValue<'data> =
  | BoxValue('data => option<'a>): boxValue<'data>;

type t<'data> = [ | #DeclarationFn(string, boxValue<'data>) ];