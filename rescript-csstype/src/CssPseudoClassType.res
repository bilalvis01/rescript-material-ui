type hover<'style> = [ | #Hover('style) ];
type t<'style> = [
  | hover<'style>
];