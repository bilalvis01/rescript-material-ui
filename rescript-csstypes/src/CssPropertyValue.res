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
    | #...string_ as s => CssString.string(s)
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