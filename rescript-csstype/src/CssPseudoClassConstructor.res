@unboxed
type rec boxDeclarations<'a> =
  | BoxDeclarations('a): boxDeclarations<'a>;

type hover<'declarations> = [ | #Hover('declarations) ];

type t<'declarations> = [
  | hover<'declarations>
];