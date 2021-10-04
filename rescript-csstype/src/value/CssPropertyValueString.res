open CssType;

let {
  global,
  bg,
  bgLayer,
  attachment,
  attachment_global,
  col,
  col_global,
  bgImage,
  bgImage_global,
  position,
  position_global,
  repeatStyle,
  repeatStyle_global,
  lineWidth,
  lineWidth_global,
  lineStyle,
  lineStyle_global,
  clr_global,
  cursorKeyword_global,
  cursorKeyword,
  cursorImage,
  fontFml,
  fontFml_global,
  fontWgt_global,
  mgn,
  mgn_global,
  pdg,
  pdg_global,
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
  | #...CssType.global as g => global(g)
  | #...CssType.bgImage as imageOrColor
  | #...CssType.col as imageOrColor =>
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

let backgroundColor = v => col_global(v);

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

let borderWidth = v => lineWidth_global(v);
let borderWidth2 = (~tb, ~lr) => 
  `${lineWidth(tb)} ${lineWidth(lr)}`;
let borderWidth3 = (~top, ~lr, ~bottom) =>
  `${lineWidth(top)} ${lineWidth(lr)} ${lineWidth(bottom)}`;
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  `${lineWidth(top)} ${lineWidth(right)} ${lineWidth(bottom)} ${lineWidth(left)}`;

let borderColor = v => col_global(v);
let borderColor2 = (~tb, ~lr) => `${col(tb)} ${col(lr)}`;
let borderColor3 = (~top, ~lr, ~bottom) => 
  `${col(top)} ${col(lr)} ${col(bottom)}`;
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  `${col(top)} ${col(right)} ${col(bottom)} ${col(left)}`;

let color = v => col_global(v);

let clear = v => clr_global(v);

let cursor = v => cursorKeyword_global(v);
let cursor1 = (i, k) =>
  `${cursorImage(i)}, ${cursorKeyword(k)}`;
let cursor2 = (i1, i2, k) =>
  `${cursorImage(i1)}, ${cursorImage(i2)}, ${cursorKeyword(k)}`;
let cursor3 = (i1, i2, i3, k) =>
  `${cursorImage(i1)}, ${cursorImage(i2)}, ${cursorImage(i3)}, ${cursorKeyword(k)}`;
let cursor4 = (i1, i2, i3, i4, k) =>
  `${cursorImage(i1)}, ${cursorImage(i2)}, ${cursorImage(i3)}, ${cursorImage(i4)}, ${cursorKeyword(k)}`;

let fontFamily = v => 
  fontFml_global(v);
let fontFamily2 = (v1, v2) =>
  `${fontFml(v1)}, ${fontFml(v2)}`;
let fontFamily3 = (v1, v2, v3) =>
  `${fontFml(v1)}, ${fontFml(v2)}, ${fontFml(v3)}`;
let fontFamily4 = (v1, v2, v3, v4) =>
  `${fontFml(v1)}, ${fontFml(v2)}, ${fontFml(v3)}, ${fontFml(v4)}`;

let fontWeight = v => fontWgt_global(v);

let margin = v => mgn_global(v);
let margin2 = (~tb, ~lr) => 
  `${mgn(tb)} ${mgn(lr)}`;
let margin3 = (~top, ~lr, ~bottom) =>
  `${mgn(top)} ${mgn(lr)} ${mgn(bottom)}`;
let margin4 = (~top, ~right, ~bottom, ~left) =>
  `${mgn(top)} ${mgn(right)} ${mgn(bottom)} ${mgn(left)}`;

let padding = v => pdg_global(v);
let padding2 = (~tb, ~lr) => 
  `${pdg(tb)} ${pdg(lr)}`;
let padding3 = (~top, ~lr, ~bottom) =>
  `${pdg(top)} ${pdg(lr)} ${pdg(bottom)}`;
let padding4 = (~top, ~right, ~bottom, ~left) =>
  `${pdg(top)} ${pdg(right)} ${pdg(bottom)} ${pdg(left)}`;