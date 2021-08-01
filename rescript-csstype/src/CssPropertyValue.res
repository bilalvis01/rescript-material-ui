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
  | (_, #...CssType.global as g) => CssString.global(g)
  | (None, #...CssType.lineStyle as s) => CssString.lineStyle(s)
  | (Some(b), #...CssType.lineStyle as s) => `${b} ${CssString.lineStyle(s)}`
  }
  ->borderString
};

type tag_borderColor;
type t_borderColor = synthetic<tag_borderColor>;
external borderColorString: string => t_borderColor = "%identity";
let borderColor = v => CssString.color_global(v)->borderColorString;
let borderColor2 = (~tb, ~lr) => `${CssString.color(tb)} ${CssString.color(lr)}`->borderColorString;
let borderColor3 = (~top, ~lr, ~bottom) => 
  `${CssString.color(top)} ${CssString.color(lr)} ${CssString.color(bottom)}`->borderColorString;
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.color(top)} ${CssString.color(right)} ${CssString.color(bottom)} ${CssString.color(left)}`
  ->borderColorString;

type tag_borderTopColor;
type t_borderTopColor = synthetic<tag_borderTopColor>;
external borderTopColorString: string => t_borderTopColor = "%identity";
let borderTopColor = v => CssString.color_global(v)->borderTopColorString;

type tag_borderRightColor;
type t_borderRightColor = synthetic<tag_borderRightColor>;
external borderRightColorString: string => t_borderRightColor = "%identity";
let borderRightColor = v => CssString.color_global(v)->borderRightColorString;

type tag_borderBottomColor;
type t_borderBottomColor = synthetic<tag_borderBottomColor>;
external borderBottomColorString: string => t_borderBottomColor = "%identity";
let borderBottomColor = v => CssString.color_global(v)->borderBottomColorString;

type tag_borderLeftColor;
type t_borderLeftColor = synthetic<tag_borderLeftColor>;
external borderLeftColorString: string => t_borderLeftColor = "%identity";
let borderLeftColor = v => CssString.color_global(v)->borderLeftColorString;

type tag_borderStyle;
type t_borderStyle = synthetic<tag_borderStyle>;
external borderStyleString: string => t_borderStyle = "%identity";
let borderStyle = v => CssString.lineStyle_global(v)->borderStyleString;
let borderStyle2 = (~tb, ~lr) =>
  `${CssString.lineStyle(tb)} ${CssString.lineStyle(lr)}`->borderStyleString;
let borderStyle3 = (~top, ~lr, ~bottom) =>
  `${CssString.lineStyle(top)} ${CssString.lineStyle(lr)} ${CssString.lineStyle(bottom)}`
  ->borderStyleString;
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.lineStyle(top)} ${CssString.lineStyle(right)} ${CssString.lineStyle(bottom)} ${CssString.lineStyle(left)}`
  ->borderStyleString;

type tag_borderTopStyle;
type t_borderTopStyle = synthetic<tag_borderTopStyle>;
external borderTopStyleString: string => t_borderTopStyle = "%identity";
let borderTopStyle = v => CssString.lineStyle_global(v)->borderTopStyleString;

type tag_borderRightStyle;
type t_borderRightStyle = synthetic<tag_borderRightStyle>;
external borderRightStyleString: string => t_borderRightStyle = "%identity";
let borderRightStyle = v => CssString.lineStyle_global(v)->borderRightStyleString;

type tag_borderBottomStyle;
type t_borderBottomStyle = synthetic<tag_borderBottomStyle>;
external borderBottomStyleString: string => t_borderBottomStyle = "%identity";
let borderBottomStyle = v => CssString.lineStyle_global(v)->borderBottomStyleString;

type tag_borderLeftStyle;
type t_borderLeftStyle = synthetic<tag_borderLeftStyle>;
external borderLeftStyleString: string => t_borderLeftStyle = "%identity";
let borderLeftStyle = v => CssString.lineStyle_global(v)->borderLeftStyleString;

type tag_borderWidth;
type t_borderWidth = synthetic<tag_borderWidth>;
external borderWidthString: string => t_borderWidth = "%identity";
let borderWidth = v => CssString.lineWidth_global(v)->borderWidthString;
let borderWidth2 = (~tb, ~lr) => 
  `${CssString.lineWidth(tb)} ${CssString.lineWidth(lr)}`->borderWidthString;
let borderWidth3 = (~top, ~lr, ~bottom) =>
  `${CssString.lineWidth(top)} ${CssString.lineWidth(lr)} ${CssString.lineWidth(bottom)}`
  ->borderWidthString;
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.lineWidth(top)} ${CssString.lineWidth(right)} ${CssString.lineWidth(bottom)} ${CssString.lineWidth(left)}`
  ->borderWidthString;

type tag_borderTopWidth;
type t_borderTopWidth = synthetic<tag_borderTopWidth>;
external borderTopWidthString: string => t_borderTopWidth = "%identity";
let borderTopWidth = v => CssString.lineWidth_global(v)->borderTopWidthString;

type tag_borderRightWidth;
type t_borderRightWidth = synthetic<tag_borderRightWidth>;
external borderRightWidthString: string => t_borderRightWidth = "%identity";
let borderRightWidth = v => CssString.lineWidth_global(v)->borderRightWidthString;

type tag_borderBottomWidth;
type t_borderBottomWidth = synthetic<tag_borderBottomWidth>;
external borderBottomWidthString: string => t_borderBottomWidth = "%identity";
let borderBottomWidth = v => CssString.lineWidth_global(v)->borderBottomWidthString;

type tag_borderLeftWidth;
type t_borderLeftWidth = synthetic<tag_borderLeftWidth>;
external borderLeftWidthString: string => t_borderLeftWidth = "%identity";
let borderLeftWidth = v => CssString.lineWidth_global(v)->borderLeftWidthString;

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
  | #...CssType.global as g => CssString.global(g)
  | #...CssType.bgImage as imageOrColor
  | #...CssType.color as imageOrColor =>
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
let margin2 = (~tb, ~lr) => 
  `${CssString.margin(tb)} ${CssString.margin(lr)}`
  ->marginString;
let margin3 = (~top, ~lr, ~bottom) =>
  `${CssString.margin(top)} ${CssString.margin(lr)} ${CssString.margin(bottom)}`
  ->marginString;
let margin4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.margin(top)} ${CssString.margin(right)} ${CssString.margin(bottom)} ${CssString.margin(left)}`
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

type tag_padding;
type t_padding = synthetic<tag_padding>;
external paddingString: string => t_padding = "%identity";
external paddingNumber: float => t_padding = "%identity";
let padding = v => CssString.padding_global(v)->paddingString;
let padding2 = (~tb, ~lr) => 
  `${CssString.padding(tb)} ${CssString.padding(lr)}`
  ->paddingString;
let padding3 = (~top, ~lr, ~bottom) =>
  `${CssString.padding(top)} ${CssString.padding(lr)} ${CssString.padding(bottom)}`
  ->paddingString;
let padding4 = (~top, ~right, ~bottom, ~left) =>
  `${CssString.padding(top)} ${CssString.padding(right)} ${CssString.padding(bottom)} ${CssString.padding(left)}`
  ->paddingString;

type tag_paddingTop;
type t_paddingTop = synthetic<tag_paddingTop>;
external paddingTopString: string => t_paddingTop = "%identity";
external paddingTopNumber: float => t_paddingTop = "%identity";
let paddingTop = v => CssString.padding_global(v)->paddingTopString;

type tag_paddingRight;
type t_paddingRight = synthetic<tag_paddingRight>;
external paddingRightString: string => t_paddingRight = "%identity";
external paddingRightNumber: float => t_paddingRight = "%identity";
let paddingRight = v => CssString.padding_global(v)->paddingRightString;

type tag_paddingBottom;
type t_paddingBottom = synthetic<tag_paddingBottom>;
external paddingBottomString: string => t_paddingBottom = "%identity";
external paddingBottomNumber: float => t_paddingBottom = "%identity";
let paddingBottom = v => CssString.padding_global(v)->paddingBottomString;

type tag_paddingLeft;
type t_paddingLeft = synthetic<tag_paddingLeft>;
external paddingLeftString: string => t_paddingLeft = "%identity";
external paddingLeftNumber: float => t_paddingLeft = "%identity";
let paddingLeft = v => CssString.padding_global(v)->paddingLeftString;

type tag_clear;
type t_clear = synthetic<tag_clear>;
external clearString: string => t_clear = "%identity";
let clear = v => CssString.clear_global(v)->clearString;

type tag_color;
type t_color = synthetic<tag_color>;
external colorString: string => t_color = "%identity";
let color = v => CssString.color_global(v)->colorString;

type tag_cursor;
type t_cursor = synthetic<tag_cursor>;
external cursorString: string => t_cursor = "%identity";
let cursor = v => CssString.cursorKeyword_global(v)->cursorString;
let cursor1 = (i, k) =>
  `${CssString.cursorImage(i)}, ${CssString.cursorKeyword(k)}`
  ->cursorString;
let cursor2 = (i1, i2, k) =>
  `${CssString.cursorImage(i1)}, ${CssString.cursorImage(i2)}, ${CssString.cursorKeyword(k)}`
  ->cursorString;
let cursor3 = (i1, i2, i3, k) =>
  `${CssString.cursorImage(i1)}, ${CssString.cursorImage(i2)}, ${CssString.cursorImage(i3)}, ${CssString.cursorKeyword(k)}`
  ->cursorString;
let cursor4 = (i1, i2, i3, i4, k) =>
  `${CssString.cursorImage(i1)}, ${CssString.cursorImage(i2)}, ${CssString.cursorImage(i3)}, ${CssString.cursorImage(i4)}, ${CssString.cursorKeyword(k)}`
  ->cursorString;