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
let border2 = (v1, v2) => {
  let toString = v =>
    switch v {
      | #...lineWidth as w => CssString.lineWidth(w)
      | #...lineStyle as s => CssString.lineStyle(s)
      | #...color as c => CssString.color(c)
    };

  `${toString(v1)} ${toString(v2)}`->string
}
let border3 = (~width, ~style, ~color) =>
  `${CssString.lineStyle(style)} ${CssString.lineWidth(width)} ${CssString.color(color)}`
  ->string;