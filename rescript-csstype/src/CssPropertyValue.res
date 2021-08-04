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
  | (Some(w), None) => Some(CssValueString.lineWidth(w))
  | (None, Some(c)) => Some(CssValueString.color(c))
  | (Some(w), Some(c)) => Some(`${CssValueString.lineWidth(w)} ${CssValueString.color(c)}`)
  };
  switch (border, style) {
  | (_, #...CssValueType.global as g) => CssValueString.global(g)
  | (None, #...CssValueType.lineStyle as s) => CssValueString.lineStyle(s)
  | (Some(b), #...CssValueType.lineStyle as s) => `${b} ${CssValueString.lineStyle(s)}`
  }
  ->borderString
};

type tag_borderColor;
type t_borderColor = synthetic<tag_borderColor>;
external borderColorString: string => t_borderColor = "%identity";
let borderColor = v => CssValueString.color_global(v)->borderColorString;
let borderColor2 = (~tb, ~lr) => `${CssValueString.color(tb)} ${CssValueString.color(lr)}`->borderColorString;
let borderColor3 = (~top, ~lr, ~bottom) => 
  `${CssValueString.color(top)} ${CssValueString.color(lr)} ${CssValueString.color(bottom)}`->borderColorString;
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.color(top)} ${CssValueString.color(right)} ${CssValueString.color(bottom)} ${CssValueString.color(left)}`
  ->borderColorString;

type tag_borderTopColor;
type t_borderTopColor = synthetic<tag_borderTopColor>;
external borderTopColorString: string => t_borderTopColor = "%identity";
let borderTopColor = v => CssValueString.color_global(v)->borderTopColorString;

type tag_borderRightColor;
type t_borderRightColor = synthetic<tag_borderRightColor>;
external borderRightColorString: string => t_borderRightColor = "%identity";
let borderRightColor = v => CssValueString.color_global(v)->borderRightColorString;

type tag_borderBottomColor;
type t_borderBottomColor = synthetic<tag_borderBottomColor>;
external borderBottomColorString: string => t_borderBottomColor = "%identity";
let borderBottomColor = v => CssValueString.color_global(v)->borderBottomColorString;

type tag_borderLeftColor;
type t_borderLeftColor = synthetic<tag_borderLeftColor>;
external borderLeftColorString: string => t_borderLeftColor = "%identity";
let borderLeftColor = v => CssValueString.color_global(v)->borderLeftColorString;

type tag_borderStyle;
type t_borderStyle = synthetic<tag_borderStyle>;
external borderStyleString: string => t_borderStyle = "%identity";
let borderStyle = v => CssValueString.lineStyle_global(v)->borderStyleString;
let borderStyle2 = (~tb, ~lr) =>
  `${CssValueString.lineStyle(tb)} ${CssValueString.lineStyle(lr)}`->borderStyleString;
let borderStyle3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.lineStyle(top)} ${CssValueString.lineStyle(lr)} ${CssValueString.lineStyle(bottom)}`
  ->borderStyleString;
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.lineStyle(top)} ${CssValueString.lineStyle(right)} ${CssValueString.lineStyle(bottom)} ${CssValueString.lineStyle(left)}`
  ->borderStyleString;

type tag_borderTopStyle;
type t_borderTopStyle = synthetic<tag_borderTopStyle>;
external borderTopStyleString: string => t_borderTopStyle = "%identity";
let borderTopStyle = v => CssValueString.lineStyle_global(v)->borderTopStyleString;

type tag_borderRightStyle;
type t_borderRightStyle = synthetic<tag_borderRightStyle>;
external borderRightStyleString: string => t_borderRightStyle = "%identity";
let borderRightStyle = v => CssValueString.lineStyle_global(v)->borderRightStyleString;

type tag_borderBottomStyle;
type t_borderBottomStyle = synthetic<tag_borderBottomStyle>;
external borderBottomStyleString: string => t_borderBottomStyle = "%identity";
let borderBottomStyle = v => CssValueString.lineStyle_global(v)->borderBottomStyleString;

type tag_borderLeftStyle;
type t_borderLeftStyle = synthetic<tag_borderLeftStyle>;
external borderLeftStyleString: string => t_borderLeftStyle = "%identity";
let borderLeftStyle = v => CssValueString.lineStyle_global(v)->borderLeftStyleString;

type tag_borderWidth;
type t_borderWidth = synthetic<tag_borderWidth>;
external borderWidthString: string => t_borderWidth = "%identity";
let borderWidth = v => CssValueString.lineWidth_global(v)->borderWidthString;
let borderWidth2 = (~tb, ~lr) => 
  `${CssValueString.lineWidth(tb)} ${CssValueString.lineWidth(lr)}`->borderWidthString;
let borderWidth3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.lineWidth(top)} ${CssValueString.lineWidth(lr)} ${CssValueString.lineWidth(bottom)}`
  ->borderWidthString;
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.lineWidth(top)} ${CssValueString.lineWidth(right)} ${CssValueString.lineWidth(bottom)} ${CssValueString.lineWidth(left)}`
  ->borderWidthString;

type tag_borderTopWidth;
type t_borderTopWidth = synthetic<tag_borderTopWidth>;
external borderTopWidthString: string => t_borderTopWidth = "%identity";
let borderTopWidth = v => CssValueString.lineWidth_global(v)->borderTopWidthString;

type tag_borderRightWidth;
type t_borderRightWidth = synthetic<tag_borderRightWidth>;
external borderRightWidthString: string => t_borderRightWidth = "%identity";
let borderRightWidth = v => CssValueString.lineWidth_global(v)->borderRightWidthString;

type tag_borderBottomWidth;
type t_borderBottomWidth = synthetic<tag_borderBottomWidth>;
external borderBottomWidthString: string => t_borderBottomWidth = "%identity";
let borderBottomWidth = v => CssValueString.lineWidth_global(v)->borderBottomWidthString;

type tag_borderLeftWidth;
type t_borderLeftWidth = synthetic<tag_borderLeftWidth>;
external borderLeftWidthString: string => t_borderLeftWidth = "%identity";
let borderLeftWidth = v => CssValueString.lineWidth_global(v)->borderLeftWidthString;

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
  | #...CssValueType.global as g => CssValueString.global(g)
  | #...CssValueType.bgImage as imageOrColor
  | #...CssValueType.color as imageOrColor =>
    CssValueString.background(
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
  `${CssValueString.bgLayer(l1)}, ${CssValueString.bgLayer(l2)}`->backgroundString;
let background3 = (l1, l2, l3) =>
  `${CssValueString.bgLayer(l1)}, ${CssValueString.bgLayer(l2)}, ${CssValueString.bgLayer(l3)}`->backgroundString;
let background4 = (l1, l2, l3, l4) =>
  `${CssValueString.bgLayer(l1)}, ${CssValueString.bgLayer(l2)}, ${CssValueString.bgLayer(l3)}, ${CssValueString.bgLayer(l4)}`
  ->backgroundString;

type tag_backgroundAttachment;
type t_backgroundAttachment = synthetic<tag_backgroundAttachment>;
external backgroundAttachmentString: string => t_backgroundAttachment = "%identity";
let backgroundAttachment = v => CssValueString.attachment(v)->backgroundAttachmentString;
let backgroundAttachment2 = (v1, v2) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}`
  ->backgroundAttachmentString;
let backgroundAttachment3 = (v1, v2, v3) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}, ${CssValueString.attachment(v3)}`
  ->backgroundAttachmentString;
let backgroundAttachment4 = (v1, v2, v3, v4) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}, ${CssValueString.attachment(v3)}, ${CssValueString.attachment(v4)}`
  ->backgroundAttachmentString;

type tag_backgroundColor
type t_backgroundColor = synthetic<tag_backgroundColor>;
external backgroundColorString: string => t_backgroundColor = "%identity";
let backgroundColor = v => CssValueString.color(v)->backgroundColorString;

type tag_backgroundImage
type t_backgroundImage = synthetic<tag_backgroundImage>;
external backgroundImageString: string => t_backgroundImage = "%identity";
let backgroundImage = v => CssValueString.bgImage(v)->backgroundImageString;
let backgroundImage2 = (v1, v2) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}`
  ->backgroundImageString;
let backgroundImage3 = (v1, v2, v3) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}, ${CssValueString.bgImage(v3)}`
  ->backgroundImageString;
let backgroundImage4 = (v1, v2, v3, v4) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}, ${CssValueString.bgImage(v3)}, ${CssValueString.bgImage(v4)}`
  ->backgroundImageString;

type tag_backgroundPosition;
type t_backgroundPosition = synthetic<tag_backgroundPosition>;
external backgroundPositionString: string => t_backgroundPosition = "%identity";
let backgroundPosition = v => CssValueString.position(v)->backgroundPositionString;
let backgroundPosition2 = (v1, v2) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}`
  ->backgroundPositionString;
let backgroundPosition3 = (v1, v2, v3) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}, ${CssValueString.position(v3)}`
  ->backgroundPositionString;
let backgroundPosition4 = (v1, v2, v3, v4) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}, ${CssValueString.position(v3)}, ${CssValueString.position(v4)}`
  ->backgroundPositionString;

type tag_backgroundStyle;
type t_backgroundStyle = synthetic<tag_backgroundStyle>;
external backgroundStyleString: string => t_backgroundStyle = "%identity";
let backgroundStyle = v => CssValueString.repeatStyle(v)->backgroundStyleString;
let backgroundStyle2 = (v1, v2) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}`
  ->backgroundStyleString;
let backgroundStyle3 = (v1, v2, v3) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}, ${CssValueString.repeatStyle(v3)}`
  ->backgroundStyleString;
let backgroundStyle4 = (v1, v2, v3, v4) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}, ${CssValueString.repeatStyle(v3)}, ${CssValueString.repeatStyle(v4)}`
  ->backgroundStyleString;

type tag_margin;
type t_margin = synthetic<tag_margin>;
external marginString: string => t_margin = "%identity";
external marginNumber: float => t_margin = "%identity";
let margin = v => CssValueString.margin_global(v)->marginString;
let margin2 = (~tb, ~lr) => 
  `${CssValueString.margin(tb)} ${CssValueString.margin(lr)}`
  ->marginString;
let margin3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.margin(top)} ${CssValueString.margin(lr)} ${CssValueString.margin(bottom)}`
  ->marginString;
let margin4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.margin(top)} ${CssValueString.margin(right)} ${CssValueString.margin(bottom)} ${CssValueString.margin(left)}`
  ->marginString;

type tag_marginTop;
type t_marginTop = synthetic<tag_marginTop>;
external marginTopString: string => t_marginTop = "%identity";
external marginTopNumber: float => t_marginTop = "%identity";
let marginTop = v => CssValueString.margin_global(v)->marginTopString;

type tag_marginRight;
type t_marginRight = synthetic<tag_marginRight>;
external marginRightString: string => t_marginRight = "%identity";
external marginRightNumber: float => t_marginRight = "%identity";
let marginRight = v => CssValueString.margin_global(v)->marginRightString;

type tag_marginBottom;
type t_marginBottom = synthetic<tag_marginBottom>;
external marginBottomString: string => t_marginBottom = "%identity";
external marginBottomNumber: float => t_marginBottom = "%identity";
let marginBottom = v => CssValueString.margin_global(v)->marginBottomString;

type tag_marginLeft;
type t_marginLeft = synthetic<tag_marginLeft>;
external marginLeftString: string => t_marginLeft = "%identity";
external marginLeftNumber: float => t_marginLeft = "%identity";
let marginLeft = v => CssValueString.margin_global(v)->marginLeftString;

type tag_padding;
type t_padding = synthetic<tag_padding>;
external paddingString: string => t_padding = "%identity";
external paddingNumber: float => t_padding = "%identity";
let padding = v => CssValueString.padding_global(v)->paddingString;
let padding2 = (~tb, ~lr) => 
  `${CssValueString.padding(tb)} ${CssValueString.padding(lr)}`
  ->paddingString;
let padding3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.padding(top)} ${CssValueString.padding(lr)} ${CssValueString.padding(bottom)}`
  ->paddingString;
let padding4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.padding(top)} ${CssValueString.padding(right)} ${CssValueString.padding(bottom)} ${CssValueString.padding(left)}`
  ->paddingString;

type tag_paddingTop;
type t_paddingTop = synthetic<tag_paddingTop>;
external paddingTopString: string => t_paddingTop = "%identity";
external paddingTopNumber: float => t_paddingTop = "%identity";
let paddingTop = v => CssValueString.padding_global(v)->paddingTopString;

type tag_paddingRight;
type t_paddingRight = synthetic<tag_paddingRight>;
external paddingRightString: string => t_paddingRight = "%identity";
external paddingRightNumber: float => t_paddingRight = "%identity";
let paddingRight = v => CssValueString.padding_global(v)->paddingRightString;

type tag_paddingBottom;
type t_paddingBottom = synthetic<tag_paddingBottom>;
external paddingBottomString: string => t_paddingBottom = "%identity";
external paddingBottomNumber: float => t_paddingBottom = "%identity";
let paddingBottom = v => CssValueString.padding_global(v)->paddingBottomString;

type tag_paddingLeft;
type t_paddingLeft = synthetic<tag_paddingLeft>;
external paddingLeftString: string => t_paddingLeft = "%identity";
external paddingLeftNumber: float => t_paddingLeft = "%identity";
let paddingLeft = v => CssValueString.padding_global(v)->paddingLeftString;

type tag_clear;
type t_clear = synthetic<tag_clear>;
external clearString: string => t_clear = "%identity";
let clear = v => CssValueString.clear_global(v)->clearString;

type tag_color;
type t_color = synthetic<tag_color>;
external colorString: string => t_color = "%identity";
let color = v => CssValueString.color_global(v)->colorString;

type tag_cursor;
type t_cursor = synthetic<tag_cursor>;
external cursorString: string => t_cursor = "%identity";
let cursor = v => CssValueString.cursorKeyword_global(v)->cursorString;
let cursor1 = (i, k) =>
  `${CssValueString.cursorImage(i)}, ${CssValueString.cursorKeyword(k)}`
  ->cursorString;
let cursor2 = (i1, i2, k) =>
  `${CssValueString.cursorImage(i1)}, ${CssValueString.cursorImage(i2)}, ${CssValueString.cursorKeyword(k)}`
  ->cursorString;
let cursor3 = (i1, i2, i3, k) =>
  `${CssValueString.cursorImage(i1)}, ${CssValueString.cursorImage(i2)}, ${CssValueString.cursorImage(i3)}, ${CssValueString.cursorKeyword(k)}`
  ->cursorString;
let cursor4 = (i1, i2, i3, i4, k) =>
  `${CssValueString.cursorImage(i1)}, ${CssValueString.cursorImage(i2)}, ${CssValueString.cursorImage(i3)}, ${CssValueString.cursorImage(i4)}, ${CssValueString.cursorKeyword(k)}`
  ->cursorString;

type tag_fontFamily;
type t_fontFamily = synthetic<tag_fontFamily>;

type tag_fontWeight;
type t_fontWeight = synthetic<tag_fontWeight>;