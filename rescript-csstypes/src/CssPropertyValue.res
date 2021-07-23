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
let border = v => {
  switch v {
    | #...global as g => CssString.global(g)
    | #...lineWidth as w => CssString.lineWidth(w)
    | #...lineStyle as s => CssString.lineStyle(s)
    | #...color as c => CssString.color(c)
  }
  ->borderString
};
let border2 = (~style, widthOrColor) => {
  let widthOrColor = switch widthOrColor {
    | #...lineWidth as w => CssString.lineWidth(w)
    | #...color as c => CssString.color(c)
  };

  `${CssString.lineStyle(style)} ${widthOrColor}`->borderString
}
let border3 = (~width, ~style, ~color) =>
  `${CssString.lineWidth(width)} ${CssString.lineStyle(style)} ${CssString.color(color)}`
  ->borderString;

type tag_borderColor;
type t_borderColor = synthetic<tag_borderColor>;
external borderColorString: string => t_borderColor = "%identity";
let borderColor = v => 
  switch v {
    | #...color as c => CssString.color(c)
    | #...global as g => CssString.global(g)
  }
  ->borderColorString;
let borderColor2 = (~tb, ~lr) => `${CssString.color(tb)} ${CssString.color(lr)}`->borderColorString;
let borderColor3 = (~top, ~lr, ~bottom) => 
  `${CssString.color(top)} ${CssString.color(lr)} ${CssString.color(bottom)}`->borderColorString;
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.color(top)} ${CssString.color(right)} ${CssString.color(bottom)} ${CssString.color(left)}`
  ->borderColorString;

type tag_borderStyle;
type t_borderStyle = synthetic<tag_borderStyle>;
external borderStyleString: string => t_borderStyle = "%identity";
let borderStyle = v =>
  switch v {
  | #...lineStyle as s => CssString.lineStyle(s)
  | #...global as g => CssString.global(g)
  }
  ->borderStyleString;
let borderStyle2 = (~tb, ~lr) =>
  `${CssString.lineStyle(tb)} ${CssString.lineStyle(lr)}`->borderStyleString;
let borderStyle3 = (~top, ~lr, ~bottom) =>
  `${CssString.lineStyle(top)} ${CssString.lineStyle(lr)} ${CssString.lineStyle(bottom)}`
  ->borderStyleString;
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.lineStyle(top)} ${CssString.lineStyle(right)} ${CssString.lineStyle(bottom)} ${CssString.lineStyle(left)}`
  ->borderStyleString;