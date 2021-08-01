type property = 
  | Property(string, CssPropertyValue.t_synthetic)
  | Border(CssPropertyValue.t_border)
  | BorderTop(CssPropertyValue.t_border)
  | BorderRight(CssPropertyValue.t_border)
  | BorderBottom(CssPropertyValue.t_border)
  | BorderLeft(CssPropertyValue.t_border)
  | BorderStyle(CssPropertyValue.t_borderStyle)
  | BorderTopStyle(CssPropertyValue.t_borderTopStyle)
  | BorderRightStyle(CssPropertyValue.t_borderRightStyle)
  | BorderBottomStyle(CssPropertyValue.t_borderBottomStyle)
  | BorderLeftStyle(CssPropertyValue.t_borderLeftStyle)
  | BorderWidth(CssPropertyValue.t_borderWidth)
  | BorderTopWidth(CssPropertyValue.t_borderTopWidth)
  | BorderRightWidth(CssPropertyValue.t_borderRightWidth)
  | BorderBottomWidth(CssPropertyValue.t_borderBottomWidth)
  | BorderLeftWidth(CssPropertyValue.t_borderLeftWidth)
  | BorderColor(CssPropertyValue.t_borderColor)
  | BorderTopColor(CssPropertyValue.t_borderTopColor)
  | BorderRightColor(CssPropertyValue.t_borderRightColor)
  | BorderBottomColor(CssPropertyValue.t_borderBottomColor)
  | BorderLeftColor(CssPropertyValue.t_borderLeftColor)
  | Background(CssPropertyValue.t_background)
  | BackgroundAttachment(CssPropertyValue.t_backgroundAttachment)
  | BackgroundColor(CssPropertyValue.t_backgroundColor)
  | BackgroundImage(CssPropertyValue.t_backgroundImage)
  | BackgroundPosition(CssPropertyValue.t_backgroundPosition)
  | BackgroundStyle(CssPropertyValue.t_backgroundStyle)
  | Margin(CssPropertyValue.t_margin)
  | MarginTop(CssPropertyValue.t_marginTop)
  | MarginRight(CssPropertyValue.t_marginRight)
  | MarginBottom(CssPropertyValue.t_marginBottom)
  | MarginLeft(CssPropertyValue.t_marginLeft)
  | Padding(CssPropertyValue.t_padding)
  | PaddingTop(CssPropertyValue.t_paddingTop)
  | PaddingBottom(CssPropertyValue.t_paddingBottom)
  | PaddingRight(CssPropertyValue.t_paddingRight)
  | PaddingLeft(CssPropertyValue.t_paddingLeft)
  | Color(CssPropertyValue.t_color)
  | Clear(CssPropertyValue.t_clear)
  | Cursor(CssPropertyValue.t_cursor)
  | FontFace(FontFace.t);

let property: (string, string) => property;
let propertyNumber: (string, float) => property;
let propertyInteger: (string, int) => property;

let border: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => property;
let borderString: string => property;

let borderTop: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => property;
let borderTopString: string => property;

let borderLeft: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => property;
let borderLeftString: string => property;

let borderRight: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => property;
let borderRightString: string => property;

let borderBottom: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => property;
let borderBottomString: string => property;

let borderColor: CssType.color_global => property;
let borderColor2: (
  ~tb: CssType.color, 
  ~lr: CssType.color
) => property;
let borderColor3: (
  ~top: CssType.color, 
  ~lr: CssType.color, 
  ~bottom: CssType.color
) => property;
let borderColor4: (
  ~top: CssType.color, 
  ~right: CssType.color, 
  ~bottom: CssType.color, 
  ~left: CssType.color
) => property;
let borderColorString: string => property;

let borderTopColor: CssType.color_global => property;
let borderTopColorString: string => property;

let borderRightColor: CssType.color_global => property;
let borderRightColorString: string => property;

let borderBottomColor: CssType.color_global => property;
let borderBottomColorString: string => property;

let borderLeftColor: CssType.color_global => property;
let borderLeftColorString: string => property;

let borderStyle: CssType.lineStyle_global => property;
let borderStyle2: (
  ~tb: CssType.lineStyle, 
  ~lr: CssType.lineStyle
) => property;
let borderStyle3: (
  ~top: CssType.lineStyle, 
  ~lr: CssType.lineStyle, 
  ~bottom: CssType.lineStyle
) => property;
let borderStyle4: (
  ~top: CssType.lineStyle, 
  ~right: CssType.lineStyle, 
  ~bottom: CssType.lineStyle, 
  ~left: CssType.lineStyle
) => property;
let borderStyleString: string => property;

let borderTopStyle: CssType.lineStyle_global => property;
let borderTopStyleString: string => property;

let borderRightStyle: CssType.lineStyle_global => property;
let borderRightStyleString: string => property;

let borderBottomStyle: CssType.lineStyle_global => property;
let borderBottomStyleString: string => property;

let borderLeftStyle: CssType.lineStyle_global => property;
let borderLeftStyleString: string => property;

let borderWidth: CssType.lineWidth_global => property;
let borderWidth2: (
  ~tb: CssType.lineWidth, 
  ~lr: CssType.lineWidth
) => property;
let borderWidth3: (
  ~top: CssType.lineWidth, 
  ~lr: CssType.lineWidth, 
  ~bottom: CssType.lineWidth
) => property;
let borderWidth4: (
  ~top: CssType.lineWidth, 
  ~right: CssType.lineWidth, 
  ~bottom: CssType.lineWidth, 
  ~left: CssType.lineWidth
) => property;
let borderWidthString: string => property;

let borderTopWidth: CssType.lineWidth_global => property;
let borderTopWidthString: string => property;

let borderRightWidth: CssType.lineWidth_global => property;
let borderRightWidthString: string => property;

let borderBottomWidth: CssType.lineWidth_global => property;
let borderBottomWidthString: string => property;

let borderLeftWidth: CssType.lineWidth_global => property;
let borderLeftWidthString: string => property;

let background: (
  ~color: CssType.color=?,
  ~position: CssType.position=?,
  ~size: CssType.bgSize=?,
  ~repeat: CssType.repeatStyle=?,
  ~attachment: CssType.attachment=?,
  ~origin: CssType.box=?,
  ~clip: CssType.box=?,
  [ | CssType.global | CssType.bgImage | CssType.color]
) => property;
let backgroundString: string => property;
let background2: (CssType.bgLayer, CssType.bgLayer) => property;
let background3: (
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer
) => property;
let background4: (
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer
) => property;

let backgroundAttachment: CssType.attachment => property;
let backgroundAttachment2: (
  CssType.attachment, 
  CssType.attachment
) => property;
let backgroundAttachment3: (
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment
) => property;
let backgroundAttachment4: (
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment
) => property;
let backgroundAttachmentString: string => property

let backgroundColor: CssType.color => property;
let backgroundColorString: string => property;

let backgroundImage: CssType.bgImage => property;
let backgroundImage2: (
  CssType.bgImage, 
  CssType.bgImage
) => property;
let backgroundImage3: (
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage
) => property;
let backgroundImage4: (
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage
) => property;
let backgroundImageString: string => property;

let backgroundPosition: CssType.position => property;
let backgroundPosition2: (
  CssType.position, 
  CssType.position
) => property;
let backgroundPosition3: (
  CssType.position, 
  CssType.position, 
  CssType.position
) => property;
let backgroundPosition4: (
  CssType.position, 
  CssType.position, 
  CssType.position,
  CssType.position
) => property;
let backgroundPositionString: string => property;

let backgroundStyle: CssType.repeatStyle => property;
let backgroundStyle2: (
  CssType.repeatStyle, 
  CssType.repeatStyle
) => property;
let backgroundStyle3: (
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle
) => property;
let backgroundStyle4: (
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle
) => property;
let backgroundStyleString: string => property;

let margin: CssType.margin_global => property;
let margin2: (
  ~tb: CssType.margin, 
  ~lr: CssType.margin
) => property;
let margin3: (
  ~top: CssType.margin, 
  ~lr: CssType.margin, 
  ~bottom: CssType.margin
) => property;
let margin4: (
  ~top: CssType.margin, 
  ~right: CssType.margin, 
  ~bottom: CssType.margin, 
  ~left: CssType.margin
) => property;
let marginString: string => property;
let marginNumber: float => property;

let marginTop: CssType.margin_global => property;
let marginTopString: string => property;
let marginTopNumber: float => property;

let marginRight: CssType.margin_global => property;
let marginRightString: string => property;
let marginRightNumber: float => property;

let marginBottom: CssType.margin_global => property;
let marginBottomString: string => property;
let marginBottomNumber: float => property;

let marginLeft: CssType.margin_global => property;
let marginLeftString: string => property;
let marginLeftNumber: float => property;

let padding: CssType.padding_global => property;
let padding2: (
  ~tb: CssType.padding, 
  ~lr: CssType.padding
) => property;
let padding3: (
  ~top: CssType.padding, 
  ~lr: CssType.padding, 
  ~bottom: CssType.padding
) => property;
let padding4: (
  ~top: CssType.padding, 
  ~right: CssType.padding, 
  ~bottom: CssType.padding, 
  ~left: CssType.padding
) => property;
let paddingString: string => property;
let paddingNumber: float => property;

let paddingTop: CssType.padding_global => property;
let paddingTopString: string => property;
let paddingTopNumber: float => property;

let paddingRight: CssType.padding_global => property;
let paddingRightString: string => property;
let paddingRightNumber: float => property;

let paddingBottom: CssType.padding_global => property;
let paddingBottomString: string => property;
let paddingBottomNumber: float => property;

let paddingLeft: CssType.padding_global => property;
let paddingLeftString: string => property;
let paddingLeftNumber: float => property;

let clear: CssType.clear_global => property;

let color: CssType.color_global => property;
let colorString: string => property;

let cursor: CssType.cursorKeyword_global => property;
let cursor1: (
  CssType.cursorImage, 
  CssType.cursorKeyword
) => property;
let cursor2: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => property;
let cursor3: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => property;
let cursor4: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => property;
let cursorString: string => property;