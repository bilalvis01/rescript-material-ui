type synthetic<'a>;

external string: string => synthetic<'a> = "%identity";
external number: float => synthetic<'a> = "%identity";
external integer: int => synthetic<'a> = "%identity";

type tag_border;
type t_border = synthetic<tag_border>;
let border = v => CssString.border(v)->string;
let border2 = (v1, v2) => 
  v1
  ->Combinator.concat(v2)
  ->CssString.border
  ->string;
let border3 = (v1, v2, v3) =>
  v1
  ->Combinator.concat(v2)
  ->Combinator.concat(v3)
  ->CssString.border
  ->string;