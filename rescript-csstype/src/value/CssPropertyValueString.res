open CssValueType;

let {
  global,
  bg,
  bgLayer,
  attachment,
  attachment_global,
  color as col,
  color_global,
  bgImage,
  bgImage_global,
  position,
  position_global,
  repeatStyle,
  repeatStyle_global,
  lineWidth,
  lineStyle,
  lineStyle_global,
} = module(CssValueString);

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
  | #...CssValueType.global as g => global(g)
  | #...CssValueType.bgImage as imageOrColor
  | #...CssValueType.color as imageOrColor =>
    bg(
      ~color=?color,
      ~position=?position,
      ~size=?size,
      ~repeat=?repeat,
      ~attachment=?attachment,
      ~origin=?origin,
      ~clip=?clip,
      imageOrColor
    );
  };
};
let background2 = (v1, v2) => 
  `${bgLayer(v1)}, ${bgLayer(v2)}`;
let background3 = (v1, v2, v3) =>
  `${bgLayer(v1)}, ${bgLayer(v2)}, ${bgLayer(v3)}`;
let background4 = (v1, v2, v3, v4) =>
  `${bgLayer(v1)}, ${bgLayer(v2)}, ${bgLayer(v3)}, ${bgLayer(v4)}`;

let backgroundAttachment = v => attachment_global(v);
let backgroundAttachment2 = (v1, v2) => 
  `${attachment(v1)}, ${attachment(v2)}`;
let backgroundAttachment3 = (v1, v2, v3) => 
  `${attachment(v1)}, ${attachment(v2)}, ${attachment(v3)}`;
let backgroundAttachment4 = (v1, v2, v3, v4) => 
  `${attachment(v1)}, ${attachment(v2)}, ${attachment(v3)}, ${attachment(v4)}`;

let backgroundImage = v => 
  bgImage_global(v);
let backgroundImage2 = (v1, v2) => 
  `${bgImage(v1)}, ${bgImage(v2)}`;
let backgroundImage3 = (v1, v2, v3) => 
  `${bgImage(v1)}, ${bgImage(v2)}, ${bgImage(v3)}`;
let backgroundImage4 = (v1, v2, v3, v4) => 
  `${bgImage(v1)}, ${bgImage(v2)}, ${bgImage(v3)}, ${bgImage(v4)}`;

let backgroundPosition = v => position_global(v);
let backgroundPosition2 = (v1, v2) => 
  `${position(v1)}, ${position(v2)}`;
let backgroundPosition3 = (v1, v2, v3) => 
  `${position(v1)}, ${position(v2)}, ${position(v3)}`;
let backgroundPosition4 = (v1, v2, v3, v4) => 
  `${position(v1)}, ${position(v2)}, ${position(v3)}, ${position(v4)}`;

let backgroundStyle = v => repeatStyle_global(v);
let backgroundStyle2 = (v1, v2) => 
  `${repeatStyle(v1)}, ${repeatStyle(v2)}`;
let backgroundStyle3 = (v1, v2, v3) => 
  `${repeatStyle(v1)}, ${repeatStyle(v2)}, ${repeatStyle(v3)}`;
let backgroundStyle4 = (v1, v2, v3, v4) => 
  `${repeatStyle(v1)}, ${repeatStyle(v2)}, ${repeatStyle(v3)}, ${repeatStyle(v4)}`;

let border = (~width=?, ~color=?, style) => {
  let border = switch (width, color) {
  | (None, None) => None
  | (Some(w), None) => Some(lineWidth(w))
  | (None, Some(c)) => Some(col(c))
  | (Some(w), Some(c)) => Some(`${lineWidth(w)} ${col(c)}`)
  };
  switch (border, style) {
  | (_, #...global as g) => global(g)
  | (None, #...lineStyle as s) => lineStyle(s)
  | (Some(b), #...lineStyle as s) => `${b} ${lineStyle(s)}`
  }
};

let borderStyle = v => lineStyle_global(v);
let borderStyle2 = (~tb, ~lr) =>
  `${lineStyle(tb)} ${lineStyle(lr)}`;
let borderStyle3 = (~top, ~lr, ~bottom) =>
  `${lineStyle(top)} ${lineStyle(lr)} ${lineStyle(bottom)}`;
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  `${lineStyle(top)} ${lineStyle(right)} ${lineStyle(bottom)} ${lineStyle(left)}`;

let color = v => color_global(v);