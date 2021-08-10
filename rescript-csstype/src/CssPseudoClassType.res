type hover<'declarations> = [ | #Hover('declarations) ];
type t<'declarations> = [
  | hover<'declarations>
];