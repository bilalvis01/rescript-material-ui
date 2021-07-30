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

/*
type tag_borderColor;
type t_borderColor = synthetic<tag_borderColor>;
external borderColorString: string => t_borderColor = "%identity";
let borderColor = v => 
  switch v {
    | #...color as c => CssString.color(c)
    | #...global as g => CssString.global(g)
  }
  ->borderColorString;
*/

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

type tag_backgroundAttachment;
type t_backgroundAttachment = synthetic<tag_backgroundAttachment>;
external backgroundAttachmentString: string => t_backgroundAttachment = "%identity";
let backgroundAttachment = v => CssString.attachment(v)->backgroundAttachmentString;
let backgroundAttachment2 = (v1, v2) => 
  `${CssString.attachment(v1)}, ${CssString.attachment(v2)}`
  ->backgroundAttachmentString;
let backgroundAttachment3 = (v1, v2, v3) => 
  `${CssString.attachment(v1)}, ${CssString.attachment(v2)}, ${CssString.attachment(v3)}`
  ->backgroundAttachmentString;
let backgroundAttachment4 = (v1, v2, v3, v4) => 
  `${CssString.attachment(v1)}, ${CssString.attachment(v2)}, ${CssString.attachment(v3)}, ${CssString.attachment(v4)}`
  ->backgroundAttachmentString;

type tag_backgroundColor
type t_backgroundColor = synthetic<tag_backgroundColor>;
external backgroundColorString: string => t_backgroundColor = "%identity";
let backgroundColor = v => CssString.color(v)->backgroundColorString;

type tag_backgroundImage
type t_backgroundImage = synthetic<tag_backgroundImage>;
external backgroundImageString: string => t_backgroundImage = "%identity";
let backgroundImage = v => CssString.bgImage(v)->backgroundImageString;
let backgroundImage2 = (v1, v2) => 
  `${CssString.bgImage(v1)}, ${CssString.bgImage(v2)}`
  ->backgroundImageString;
let backgroundImage3 = (v1, v2, v3) => 
  `${CssString.bgImage(v1)}, ${CssString.bgImage(v2)}, ${CssString.bgImage(v3)}`
  ->backgroundImageString;
let backgroundImage4 = (v1, v2, v3, v4) => 
  `${CssString.bgImage(v1)}, ${CssString.bgImage(v2)}, ${CssString.bgImage(v3)}, ${CssString.bgImage(v4)}`
  ->backgroundImageString;

type tag_backgroundPosition;
type t_backgroundPosition = synthetic<tag_backgroundPosition>;
external backgroundPositionString: string => t_backgroundPosition = "%identity";
let backgroundPosition = v => CssString.position(v)->backgroundPositionString;
let backgroundPosition2 = (v1, v2) => 
  `${CssString.position(v1)}, ${CssString.position(v2)}`
  ->backgroundPositionString;
let backgroundPosition3 = (v1, v2, v3) => 
  `${CssString.position(v1)}, ${CssString.position(v2)}, ${CssString.position(v3)}`
  ->backgroundPositionString;
let backgroundPosition4 = (v1, v2, v3, v4) => 
  `${CssString.position(v1)}, ${CssString.position(v2)}, ${CssString.position(v3)}, ${CssString.position(v4)}`
  ->backgroundPositionString;

type tag_backgroundStyle;
type t_backgroundStyle = synthetic<tag_backgroundStyle>;
external backgroundStyleString: string => t_backgroundStyle = "%identity";
let backgroundStyle = v => CssString.repeatStyle(v)->backgroundStyleString;
let backgroundStyle2 = (v1, v2) => 
  `${CssString.repeatStyle(v1)}, ${CssString.repeatStyle(v2)}`
  ->backgroundStyleString;
let backgroundStyle3 = (v1, v2, v3) => 
  `${CssString.repeatStyle(v1)}, ${CssString.repeatStyle(v2)}, ${CssString.repeatStyle(v3)}`
  ->backgroundStyleString;
let backgroundStyle4 = (v1, v2, v3, v4) => 
  `${CssString.repeatStyle(v1)}, ${CssString.repeatStyle(v2)}, ${CssString.repeatStyle(v3)}, ${CssString.repeatStyle(v4)}`
  ->backgroundStyleString;

type tag_margin;
type t_margin = synthetic<tag_margin>;
external marginString: string => t_margin = "%identity";
external marginNumber: float => t_margin = "%identity";
let margin = v => CssString.margin_global(v)->marginString;
let margin2 = (v1, v2) => 
  `${CssString.margin(v1)} ${CssString.margin(v2)}`
  ->marginString;
let margin3 = (v1, v2, v3) =>
  `${CssString.margin(v1)} ${CssString.margin(v2)} ${CssString.margin(v3)}`
  ->marginString;
let margin4 = (v1, v2, v3, v4) =>
  `${CssString.margin(v1)} ${CssString.margin(v2)} ${CssString.margin(v3)} ${CssString.margin(v4)}`
  ->marginString;

type tag_marginTop;
type t_marginTop = synthetic<tag_marginTop>;
external marginTopString: string => t_marginTop = "%identity";
external marginTopNumber: float => t_marginTop = "%identity";
let marginTop = v => CssString.margin_global(v)->marginTopString;

type tag_marginRight;
type t_marginRight = synthetic<tag_marginRight>;
external marginRightString: string => t_marginRight = "%identity";
external marginRightNumber: float => t_marginRight = "%identity";
let marginRight = v => CssString.margin_global(v)->marginRightString;

type tag_marginBottom;
type t_marginBottom = synthetic<tag_marginBottom>;
external marginBottomString: string => t_marginBottom = "%identity";
external marginBottomNumber: float => t_marginBottom = "%identity";
let marginBottom = v => CssString.margin_global(v)->marginBottomString;

type tag_marginLeft;
type t_marginLeft = synthetic<tag_marginLeft>;
external marginLeftString: string => t_marginLeft = "%identity";
external marginLeftNumber: float => t_marginLeft = "%identity";
let marginLeft = v => CssString.margin_global(v)->marginLeftString;