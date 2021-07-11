open CssType;
type synthetic<'a>;

external string: string => synthetic<'a> = "%identity";
external number: float => synthetic<'a> = "%identity";
external integer: int => synthetic<'a> = "%identity";

type tag_border;
type t_border = synthetic<tag_border>;
let border: border => t_border;
let border2: (border, border) => t_border;
let border3: (
  ~width: lineWidth,
  ~style: lineStyle,  
  ~color: color,
) => t_border;