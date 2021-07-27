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
let border = (~width=?, ~color=?, style) => {
  let border = switch (width, color) {
  | (None, None) => None
  | (Some(w), None) => Some(CssString.lineWidth(w))
  | (None, Some(c)) => Some(CssString.color(c))
  | (Some(w), Some(c)) => Some(`${CssString.lineWidth(w)} ${CssString.color(c)}`)
  };
  switch (border, style) {
  | (_, #...global as g) => CssString.global(g)
  | (None, #...lineStyle as s) => CssString.lineStyle(s)
  | (Some(b), #...lineStyle as s) => `${b} ${CssString.lineStyle(s)}`
  }
  ->borderString
};

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

type tag_borderWidth;
type t_borderWidth = synthetic<tag_borderWidth>;
external borderWidthString: string => t_borderWidth = "%identity";
let borderWidth = v => 
  switch v {
    | #...lineWidth as w => CssString.lineWidth(w)
    | #...global as g => CssString.global(g)
  }
  ->borderWidthString;
let borderWidth2 = (~tb, ~lr) => `${CssString.lineWidth(tb)} ${CssString.lineWidth(lr)}`->borderWidthString;
let borderWidth3 = (~top, ~lr, ~bottom) =>
  `${CssString.lineWidth(top)} ${CssString.lineWidth(lr)} ${CssString.lineWidth(bottom)}`
  ->borderWidthString;
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.lineWidth(top)} ${CssString.lineWidth(right)} ${CssString.lineWidth(bottom)} ${CssString.lineWidth(left)}`
  ->borderWidthString;

type tag_background;
type t_background = synthetic<tag_background>;
external backgroundString: string => t_background = "%identity";
let background = (
  ~color=?,
  ~position=?,
  ~size=?,
  ~repeat=?,
  ~attachment=?,
  ~origin=?,
  ~clip=?,
  imageOrColor
) => {
  switch imageOrColor {
  | #...global as g => CssString.global(g)
  | #...bgImage as imageOrColor
  | #...color as imageOrColor =>
    CssString.background(
      ~color=?color,
      ~position=?position,
      ~size=?size,
      ~repeat=?repeat,
      ~attachment=?attachment,
      ~origin=?origin,
      ~clip=?clip,
      imageOrColor
    );
  }
  ->backgroundString;
};
let background2 = (l1, l2) => 
  `${CssString.bgLayer(l1)}, ${CssString.bgLayer(l2)}`->backgroundString;
let background3 = (l1, l2, l3) =>
  `${CssString.bgLayer(l1)}, ${CssString.bgLayer(l2)}, ${CssString.bgLayer(l3)}`->backgroundString;
let background4 = (l1, l2, l3, l4) =>
  `${CssString.bgLayer(l1)}, ${CssString.bgLayer(l2)}, ${CssString.bgLayer(l3)}, ${CssString.bgLayer(l4)}`
  ->backgroundString;