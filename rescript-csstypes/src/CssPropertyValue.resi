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
let border: (
  ~width: lineWidth=?,
  ~color: color=?,
  [ | global | lineStyle ]
) => t_border;

type tag_borderColor;
type t_borderColor = synthetic<tag_borderColor>;
external borderColorString: string => t_borderColor = "%identity";
let borderColor: color_global => t_borderColor;
let borderColor2: (~tb: color, ~lr: color) => t_borderColor;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => t_borderColor;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => t_borderColor;

type tag_borderTopColor;
type t_borderTopColor = synthetic<tag_borderTopColor>;
external borderTopColorString: string => t_borderTopColor = "%identity";
let borderTopColor: color_global => t_borderTopColor;

type tag_borderRightColor;
type t_borderRightColor = synthetic<tag_borderRightColor>;
external borderRightColorString: string => t_borderRightColor = "%identity";
let borderRightColor: color_global => t_borderRightColor;

type tag_borderBottomColor;
type t_borderBottomColor = synthetic<tag_borderBottomColor>;
external borderBottomColorString: string => t_borderBottomColor = "%identity";
let borderBottomColor: color_global => t_borderBottomColor;

type tag_borderLeftColor;
type t_borderLeftColor = synthetic<tag_borderLeftColor>;
external borderLeftColorString: string => t_borderLeftColor = "%identity";
let borderLeftColor: color_global => t_borderLeftColor;

type tag_borderStyle;
type t_borderStyle = synthetic<tag_borderStyle>;
external borderStyleString: string => t_borderStyle = "%identity";
let borderStyle: lineStyle_global => t_borderStyle;
let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => t_borderStyle;
let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => t_borderStyle;
let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => t_borderStyle;

type tag_borderTopStyle;
type t_borderTopStyle = synthetic<tag_borderTopStyle>;
external borderTopStyleString: string => t_borderTopStyle = "%identity";
let borderTopStyle: lineStyle_global => t_borderTopStyle;

type tag_borderRightStyle;
type t_borderRightStyle = synthetic<tag_borderRightStyle>;
external borderRightStyleString: string => t_borderRightStyle = "%identity";
let borderRightStyle: lineStyle_global => t_borderRightStyle;

type tag_borderBottomStyle;
type t_borderBottomStyle = synthetic<tag_borderBottomStyle>;
external borderBottomStyleString: string => t_borderBottomStyle = "%identity";
let borderBottomStyle: lineStyle_global => t_borderBottomStyle;

type tag_borderLeftStyle;
type t_borderLeftStyle = synthetic<tag_borderLeftStyle>;
external borderLeftStyleString: string => t_borderLeftStyle = "%identity";
let borderLeftStyle: lineStyle_global => t_borderLeftStyle;

type tag_borderWidth;
type t_borderWidth = synthetic<tag_borderWidth>;
external borderWidthString: string => t_borderWidth = "%identity";
let borderWidth: lineWidth_global => t_borderWidth;
let borderWidth2: (~tb: lineWidth, ~lr: lineWidth) => t_borderWidth;
let borderWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => t_borderWidth;
let borderWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => t_borderWidth;

type tag_borderTopWidth;
type t_borderTopWidth = synthetic<tag_borderTopWidth>;
external borderTopWidthString: string => t_borderTopWidth = "%identity";
let borderTopWidth: lineWidth_global => t_borderTopWidth;

type tag_borderRightWidth;
type t_borderRightWidth = synthetic<tag_borderRightWidth>;
external borderRightWidthString: string => t_borderRightWidth = "%identity";
let borderRightWidth: lineWidth_global => t_borderRightWidth;

type tag_borderBottomWidth;
type t_borderBottomWidth = synthetic<tag_borderBottomWidth>;
external borderBottomWidthString: string => t_borderBottomWidth = "%identity";
let borderBottomWidth: lineWidth_global => t_borderBottomWidth;

type tag_borderLeftWidth;
type t_borderLeftWidth = synthetic<tag_borderLeftWidth>;
external borderLeftWidthString: string => t_borderLeftWidth = "%identity";
let borderLeftWidth: lineWidth_global => t_borderLeftWidth;

type tag_background;
type t_background = synthetic<tag_background>;
external backgroundString: string => t_background = "%identity";
let background: (
  ~color: color=?,
  ~position: position=?,
  ~size: bgSize=?,
  ~repeat: repeatStyle=?,
  ~attachment: attachment=?,
  ~origin: box=?,
  ~clip: box=?,
  [ | global | bgImage | color ]
) => t_background;
let background2: (bgLayer, bgLayer) => t_background;
let background3: (bgLayer, bgLayer, bgLayer) => t_background;
let background4: (bgLayer, bgLayer, bgLayer, bgLayer) => t_background;

type tag_backgroundAttachment;
type t_backgroundAttachment = synthetic<tag_backgroundAttachment>;
external backgroundAttachmentString: string => t_backgroundAttachment = "%identity";
let backgroundAttachment: attachment => t_backgroundAttachment;
let backgroundAttachment2: (attachment, attachment) => t_backgroundAttachment;
let backgroundAttachment3: (attachment, attachment, attachment) => 
  t_backgroundAttachment;
let backgroundAttachment4: (attachment, attachment, attachment, attachment) => 
  t_backgroundAttachment;

type tag_backgroundColor;
type t_backgroundColor = synthetic<tag_backgroundColor>;
external backgroundColorString: string => t_backgroundColor = "%identity";
let backgroundColor: color => t_backgroundColor;

type tag_backgroundImage;
type t_backgroundImage = synthetic<tag_backgroundImage>;
external backgroundImageString: string => t_backgroundImage = "%identity";
let backgroundImage: bgImage => t_backgroundImage;
let backgroundImage2: (bgImage, bgImage) => t_backgroundImage;
let backgroundImage3: (bgImage, bgImage, bgImage) => t_backgroundImage;
let backgroundImage4: (bgImage, bgImage, bgImage, bgImage) => t_backgroundImage;

type tag_backgroundPosition;
type t_backgroundPosition = synthetic<tag_backgroundPosition>;
external backgroundPositionString: string => t_backgroundPosition = "%identity";
let backgroundPosition: position => t_backgroundPosition;
let backgroundPosition2: (position, position) => t_backgroundPosition;
let backgroundPosition3: (position, position, position) => t_backgroundPosition;
let backgroundPosition4: (position, position, position, position) => t_backgroundPosition;

type tag_backgroundStyle;
type t_backgroundStyle = synthetic<tag_backgroundStyle>;
external backgroundStyleString: string => t_backgroundStyle = "%identity";
let backgroundStyle: repeatStyle => t_backgroundStyle;
let backgroundStyle2: (repeatStyle, repeatStyle) => t_backgroundStyle;
let backgroundStyle3: (repeatStyle, repeatStyle, repeatStyle) => t_backgroundStyle;
let backgroundStyle4: (repeatStyle, repeatStyle, repeatStyle, repeatStyle) => t_backgroundStyle;

type tag_margin;
type t_margin = synthetic<tag_margin>;
external marginString: string => t_margin = "%identity";
external marginNumber: float => t_margin = "%identity";
let margin: margin_global => t_margin;
let margin2: (~tb: margin, ~lr: margin) => t_margin;
let margin3: (~top: margin, ~lr: margin, ~bottom: margin) => t_margin;
let margin4: (~top: margin, ~right: margin, ~bottom: margin, ~left: margin) => t_margin;

type tag_marginTop;
type t_marginTop = synthetic<tag_marginTop>;
external marginTopString: string => t_marginTop = "%identity";
external marginTopNumber: float => t_marginTop = "%identity";
let marginTop: margin_global => t_marginTop;

type tag_marginRight;
type t_marginRight = synthetic<tag_marginRight>;
external marginRightString: string => t_marginRight = "%identity";
external marginRightNumber: float => t_marginRight = "%identity";
let marginRight: margin_global => t_marginRight;

type tag_marginBottom;
type t_marginBottom = synthetic<tag_marginBottom>;
external marginBottomString: string => t_marginBottom = "%identity";
external marginBottomNumber: float => t_marginBottom = "%identity";
let marginBottom: margin_global => t_marginBottom;

type tag_marginLeft;
type t_marginLeft = synthetic<tag_marginLeft>;
external marginLeftString: string => t_marginLeft = "%identity";
external marginLeftNumber: float => t_marginLeft = "%identity";
let marginLeft: margin_global => t_marginLeft;

type tag_padding;
type t_padding = synthetic<tag_padding>;
external paddingString: string => t_padding = "%identity";
external paddingNumber: float => t_padding = "%identity";
let padding: padding_global => t_padding;
let padding2: (~tb: padding, ~lr: padding) => t_padding;
let padding3: (~top: padding, ~lr: padding, ~bottom: padding) => t_padding;
let padding4: (~top: padding, ~right: padding, ~bottom: padding, ~left: padding) => t_padding;

type tag_paddingTop;
type t_paddingTop = synthetic<tag_paddingTop>;
external paddingTopString: string => t_paddingTop = "%identity";
external paddingTopNumber: float => t_paddingTop = "%identity";
let paddingTop: padding_global => t_paddingTop;

type tag_paddingRight;
type t_paddingRight = synthetic<tag_paddingRight>;
external paddingRightString: string => t_paddingRight = "%identity";
external paddingRightNumber: float => t_paddingRight = "%identity";
let paddingRight: padding_global => t_paddingRight;

type tag_paddingBottom;
type t_paddingBottom = synthetic<tag_paddingBottom>;
external paddingBottomString: string => t_paddingBottom = "%identity";
external paddingBottomNumber: float => t_paddingBottom = "%identity";
let paddingBottom: padding_global => t_paddingBottom;

type tag_paddingLeft;
type t_paddingLeft = synthetic<tag_paddingLeft>;
external paddingLeftString: string => t_paddingLeft = "%identity";
external paddingLeftNumber: float => t_paddingLeft = "%identity";
let paddingLeft: padding_global => t_paddingLeft;
