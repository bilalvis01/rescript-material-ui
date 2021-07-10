type synthetic<'a>;

external string: string => synthetic<'a> = "%identity";

type border;
type t_border = synthetic<border>;
let border = v => Stringify.border(v)->string;
let border2 = (v1, v2) => 
  v1
  ->Combinator.concat(v2)
  ->Stringify.border
  ->string;
let border3 = (v1, v2, v3) =>
  v1
  ->Combinator.concat(v2)
  ->Combinator.concat(v3)
  ->Stringify.border
  ->string;