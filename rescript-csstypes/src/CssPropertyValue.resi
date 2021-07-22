open CssType;
type synthetic<'a>;

external string: string => synthetic<'a> = "%identity";
external number: float => synthetic<'a> = "%identity";
external integer: int => synthetic<'a> = "%identity";

type tag_border;
type t_border = synthetic<tag_border>;
let border: [ | global | lineWidth | lineStyle | color ] => t_border;
let border2: (
  ~style: lineStyle, 
  [ | lineWidth | color ]
) => t_border;
let border3: (
  ~width: lineWidth,
  ~style: lineStyle,  
  ~color: color,
) => t_border;

type tag_borderColor;
type t_borderColor = synthetic<tag_borderColor>;
let borderColor: [ | color | global ] => t_borderColor;
let borderColor2: (~tb: color, ~lr: color) => t_borderColor;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => t_borderColor;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => t_borderColor;