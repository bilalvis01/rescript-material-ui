open CssType;

type synthetic<'a>;

external string: string => synthetic<'a> = "%identity";
external number: float => synthetic<'a> = "%identity";
external integer: int => synthetic<'a> = "%identity";

type tag_border;
type t_border = synthetic<tag_border>;
let border = v => {
  switch v {
    | #...global as g => CssString.global(g)
    | #...lineWidth as w => CssString.lineWidth(w)
    | #...lineStyle as s => CssString.lineStyle(s)
    | #...color as c => CssString.color(c)
  }
  ->string
};
let border2 = (~style, widthOrColor) => {
  let widthOrColor = switch widthOrColor {
    | #...lineWidth as w => CssString.lineWidth(w)
    | #...color as c => CssString.color(c)
  };

  `${CssString.lineStyle(style)} ${widthOrColor}`->string
}
let border3 = (~width, ~style, ~color) =>
  `${CssString.lineWidth(width)} ${CssString.lineStyle(style)} ${CssString.color(color)}`
  ->string;

type tag_borderColor;
type t_borderColor = synthetic<tag_borderColor>;
let borderColor = v => 
  switch v {
    | #...color as c => CssString.color(c)
    | #...global as g => CssString.global(g)
  }
  ->string;
let borderColor2 = (~tb, ~lr) => `${CssString.color(tb)} ${CssString.color(lr)}`->string;
let borderColor3 = (~top, ~lr, ~bottom) => 
  `${CssString.color(top)} ${CssString.color(lr)} ${CssString.color(bottom)}`->string;
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.color(top)} ${CssString.color(right)} ${CssString.color(bottom)} ${CssString.color(left)}`
  ->string;

type tag_borderStyle;
type t_borderStyle = synthetic<tag_borderStyle>;
let borderStyle = v =>
  switch v {
  | #...lineStyle as s => CssString.lineStyle(s)
  | #...global as g => CssString.global(g)
  }
  ->string;
let borderStyle2 = (~tb, ~lr) =>
  `${CssString.lineStyle(tb)} ${CssString.lineStyle(lr)}`->string;
let borderStyle3 = (~top, ~lr, ~bottom) =>
  `${CssString.lineStyle(top)} ${CssString.lineStyle(lr)} ${CssString.lineStyle(bottom)}`
  ->string;
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.lineStyle(top)} ${CssString.lineStyle(right)} ${CssString.lineStyle(bottom)} ${CssString.lineStyle(left)}`
  ->string;