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
let borderColor: [ | color | global ] => t_borderColor;
let borderColor2: (~tb: color, ~lr: color) => t_borderColor;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => t_borderColor;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => t_borderColor;

type tag_borderStyle;
type t_borderStyle = synthetic<tag_borderStyle>;
external borderStyleString: string => t_borderStyle = "%identity";
let borderStyle: [ | lineStyle | global ] => t_borderStyle;
let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => t_borderStyle;
let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => t_borderStyle;
let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => t_borderStyle;

type tag_borderWidth;
type t_borderWidth = synthetic<tag_borderWidth>;
external borderWidthString: string => t_borderWidth = "%identity";
let borderWidth: [ | lineWidth | global ] => t_borderWidth;
let borderWidth2: (~tb: lineWidth, ~lr: lineWidth) => t_borderWidth;
let borderWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => t_borderWidth;
let borderWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => t_borderWidth;

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