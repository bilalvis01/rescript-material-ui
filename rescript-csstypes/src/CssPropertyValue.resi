open CssType;
type synthetic<'a>;

type tag_synthetic;
type t_synthetic = synthetic<tag_synthetic>
external string: string => t_synthetic = "%identity";
external number: float => t_synthetic = "%identity";
external integer: int => t_synthetic = "%identity";

type tag_border;
type t_border = synthetic<tag_border>;
external borderString: string => t_border = "%identity";
let border: [ | global | lineStyle ] => t_border;
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
external borderColorString: string => t_borderColor = "%identity";
let borderColor: [ | color | global ] => t_borderColor;
let borderColor2: (~tb: color, ~lr: color) => t_borderColor;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => t_borderColor;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => t_borderColor;

type tag_borderStyle;
type t_borderStyle = synthetic<tag_borderStyle>;
external borderStyleString: string => t_borderStyle = "%identity";
let borderStyle: [ | lineStyle | global ] => t_borderStyle;
let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => t_borderStyle;
let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => t_borderStyle;
let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => t_borderStyle;

type tag_borderWidth;
type t_borderWidth = synthetic<tag_borderWidth>;
external borderWidthString: string => t_borderWidth = "%identity";
let borderWidth: [ | lineWidth | global ] => t_borderWidth;
let borderWidth2: (~tb: lineWidth, ~lr: lineWidth) => t_borderWidth;
let borderWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => t_borderWidth;
let borderWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => t_borderWidth;

type tag_background;
type t_background = synthetic<tag_background>;
external backgroundString: string => t_background = "%identity";
let background: [ | global | bgImage | color] => t_background;
let background2: (
  ~color: color=?,
  ~image: bgImage=?,
  ~position: bgPosition=?,
  ~size: bgSize=?,
  ~repeat: repeatStyle=?,
  ~attachment: attachment=?,
  ~box: box=?,
  ~box2: box=?,
  unit
) => t_background;