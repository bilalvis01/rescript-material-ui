let property: (string, CssPropertyValue.synthetic<'a>) => (string, CssPropertyValue.box);
let propertyString: (string, string) => (string, CssPropertyValue.box);
let propertyNumber: (string, float) => (string, CssPropertyValue.box);
let propertyInteger: (string, int) => (string, CssPropertyValue.box);

let border: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => (string, CssPropertyValue.box);
let borderString: string => (string, CssPropertyValue.box);

let borderTop: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => (string, CssPropertyValue.box);
let borderTopString: string => (string, CssPropertyValue.box);

let borderLeft: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => (string, CssPropertyValue.box);
let borderLeftString: string => (string, CssPropertyValue.box);

let borderRight: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => (string, CssPropertyValue.box);
let borderRightString: string => (string, CssPropertyValue.box);

let borderBottom: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => (string, CssPropertyValue.box);
let borderBottomString: string => (string, CssPropertyValue.box);

let borderColor: CssType.color_global => (string, CssPropertyValue.box);
let borderColor2: (
  ~tb: CssType.color, 
  ~lr: CssType.color
) => (string, CssPropertyValue.box);
let borderColor3: (
  ~top: CssType.color, 
  ~lr: CssType.color, 
  ~bottom: CssType.color
) => (string, CssPropertyValue.box);
let borderColor4: (
  ~top: CssType.color, 
  ~right: CssType.color, 
  ~bottom: CssType.color, 
  ~left: CssType.color
) => (string, CssPropertyValue.box);
let borderColorString: string => (string, CssPropertyValue.box);

let borderTopColor: CssType.color_global => (string, CssPropertyValue.box);
let borderTopColorString: string => (string, CssPropertyValue.box);

let borderRightColor: CssType.color_global => (string, CssPropertyValue.box);
let borderRightColorString: string => (string, CssPropertyValue.box);

let borderBottomColor: CssType.color_global => (string, CssPropertyValue.box);
let borderBottomColorString: string => (string, CssPropertyValue.box);

let borderLeftColor: CssType.color_global => (string, CssPropertyValue.box);
let borderLeftColorString: string => (string, CssPropertyValue.box);

let borderStyle: CssType.lineStyle_global => (string, CssPropertyValue.box);
let borderStyle2: (
  ~tb: CssType.lineStyle, 
  ~lr: CssType.lineStyle
) => (string, CssPropertyValue.box);
let borderStyle3: (
  ~top: CssType.lineStyle, 
  ~lr: CssType.lineStyle, 
  ~bottom: CssType.lineStyle
) => (string, CssPropertyValue.box);
let borderStyle4: (
  ~top: CssType.lineStyle, 
  ~right: CssType.lineStyle, 
  ~bottom: CssType.lineStyle, 
  ~left: CssType.lineStyle
) => (string, CssPropertyValue.box);
let borderStyleString: string => (string, CssPropertyValue.box);

let borderTopStyle: CssType.lineStyle_global => (string, CssPropertyValue.box);
let borderTopStyleString: string => (string, CssPropertyValue.box);

let borderRightStyle: CssType.lineStyle_global => (string, CssPropertyValue.box);
let borderRightStyleString: string => (string, CssPropertyValue.box);

let borderBottomStyle: CssType.lineStyle_global => (string, CssPropertyValue.box);
let borderBottomStyleString: string => (string, CssPropertyValue.box);

let borderLeftStyle: CssType.lineStyle_global => (string, CssPropertyValue.box);
let borderLeftStyleString: string => (string, CssPropertyValue.box);

let borderWidth: CssType.lineWidth_global => (string, CssPropertyValue.box);
let borderWidth2: (
  ~tb: CssType.lineWidth, 
  ~lr: CssType.lineWidth
) => (string, CssPropertyValue.box);
let borderWidth3: (
  ~top: CssType.lineWidth, 
  ~lr: CssType.lineWidth, 
  ~bottom: CssType.lineWidth
) => (string, CssPropertyValue.box);
let borderWidth4: (
  ~top: CssType.lineWidth, 
  ~right: CssType.lineWidth, 
  ~bottom: CssType.lineWidth, 
  ~left: CssType.lineWidth
) => (string, CssPropertyValue.box);
let borderWidthString: string => (string, CssPropertyValue.box);

let borderTopWidth: CssType.lineWidth_global => (string, CssPropertyValue.box);
let borderTopWidthString: string => (string, CssPropertyValue.box);

let borderRightWidth: CssType.lineWidth_global => (string, CssPropertyValue.box);
let borderRightWidthString: string => (string, CssPropertyValue.box);

let borderBottomWidth: CssType.lineWidth_global => (string, CssPropertyValue.box);
let borderBottomWidthString: string => (string, CssPropertyValue.box);

let borderLeftWidth: CssType.lineWidth_global => (string, CssPropertyValue.box);
let borderLeftWidthString: string => (string, CssPropertyValue.box);

let background: (
  ~color: CssType.color=?,
  ~position: CssType.position=?,
  ~size: CssType.bgSize=?,
  ~repeat: CssType.repeatStyle=?,
  ~attachment: CssType.attachment=?,
  ~origin: CssType.box=?,
  ~clip: CssType.box=?,
  [ | CssType.global | CssType.bgImage | CssType.color]
) => (string, CssPropertyValue.box);
let backgroundString: string => (string, CssPropertyValue.box);
let background2: (CssType.bgLayer, CssType.bgLayer) => (string, CssPropertyValue.box);
let background3: (
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer
) => (string, CssPropertyValue.box);
let background4: (
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer
) => (string, CssPropertyValue.box);

let backgroundAttachment: CssType.attachment => (string, CssPropertyValue.box);
let backgroundAttachment2: (
  CssType.attachment, 
  CssType.attachment
) => (string, CssPropertyValue.box);
let backgroundAttachment3: (
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment
) => (string, CssPropertyValue.box);
let backgroundAttachment4: (
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment
) => (string, CssPropertyValue.box);
let backgroundAttachmentString: string => (string, CssPropertyValue.box)

let backgroundColor: CssType.color => (string, CssPropertyValue.box);
let backgroundColorString: string => (string, CssPropertyValue.box);

let backgroundImage: CssType.bgImage => (string, CssPropertyValue.box);
let backgroundImage2: (
  CssType.bgImage, 
  CssType.bgImage
) => (string, CssPropertyValue.box);
let backgroundImage3: (
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage
) => (string, CssPropertyValue.box);
let backgroundImage4: (
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage
) => (string, CssPropertyValue.box);
let backgroundImageString: string => (string, CssPropertyValue.box);

let backgroundPosition: CssType.position => (string, CssPropertyValue.box);
let backgroundPosition2: (
  CssType.position, 
  CssType.position
) => (string, CssPropertyValue.box);
let backgroundPosition3: (
  CssType.position, 
  CssType.position, 
  CssType.position
) => (string, CssPropertyValue.box);
let backgroundPosition4: (
  CssType.position, 
  CssType.position, 
  CssType.position,
  CssType.position
) => (string, CssPropertyValue.box);
let backgroundPositionString: string => (string, CssPropertyValue.box);

let backgroundStyle: CssType.repeatStyle => (string, CssPropertyValue.box);
let backgroundStyle2: (
  CssType.repeatStyle, 
  CssType.repeatStyle
) => (string, CssPropertyValue.box);
let backgroundStyle3: (
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle
) => (string, CssPropertyValue.box);
let backgroundStyle4: (
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle
) => (string, CssPropertyValue.box);
let backgroundStyleString: string => (string, CssPropertyValue.box);

let margin: CssType.margin_global => (string, CssPropertyValue.box);
let margin2: (
  ~tb: CssType.margin, 
  ~lr: CssType.margin
) => (string, CssPropertyValue.box);
let margin3: (
  ~top: CssType.margin, 
  ~lr: CssType.margin, 
  ~bottom: CssType.margin
) => (string, CssPropertyValue.box);
let margin4: (
  ~top: CssType.margin, 
  ~right: CssType.margin, 
  ~bottom: CssType.margin, 
  ~left: CssType.margin
) => (string, CssPropertyValue.box);
let marginString: string => (string, CssPropertyValue.box);
let marginNumber: float => (string, CssPropertyValue.box);

let marginTop: CssType.margin_global => (string, CssPropertyValue.box);
let marginTopString: string => (string, CssPropertyValue.box);
let marginTopNumber: float => (string, CssPropertyValue.box);

let marginRight: CssType.margin_global => (string, CssPropertyValue.box);
let marginRightString: string => (string, CssPropertyValue.box);
let marginRightNumber: float => (string, CssPropertyValue.box);

let marginBottom: CssType.margin_global => (string, CssPropertyValue.box);
let marginBottomString: string => (string, CssPropertyValue.box);
let marginBottomNumber: float => (string, CssPropertyValue.box);

let marginLeft: CssType.margin_global => (string, CssPropertyValue.box);
let marginLeftString: string => (string, CssPropertyValue.box);
let marginLeftNumber: float => (string, CssPropertyValue.box);

let padding: CssType.padding_global => (string, CssPropertyValue.box);
let padding2: (
  ~tb: CssType.padding, 
  ~lr: CssType.padding
) => (string, CssPropertyValue.box);
let padding3: (
  ~top: CssType.padding, 
  ~lr: CssType.padding, 
  ~bottom: CssType.padding
) => (string, CssPropertyValue.box);
let padding4: (
  ~top: CssType.padding, 
  ~right: CssType.padding, 
  ~bottom: CssType.padding, 
  ~left: CssType.padding
) => (string, CssPropertyValue.box);
let paddingString: string => (string, CssPropertyValue.box);
let paddingNumber: float => (string, CssPropertyValue.box);

let paddingTop: CssType.padding_global => (string, CssPropertyValue.box);
let paddingTopString: string => (string, CssPropertyValue.box);
let paddingTopNumber: float => (string, CssPropertyValue.box);

let paddingRight: CssType.padding_global => (string, CssPropertyValue.box);
let paddingRightString: string => (string, CssPropertyValue.box);
let paddingRightNumber: float => (string, CssPropertyValue.box);

let paddingBottom: CssType.padding_global => (string, CssPropertyValue.box);
let paddingBottomString: string => (string, CssPropertyValue.box);
let paddingBottomNumber: float => (string, CssPropertyValue.box);

let paddingLeft: CssType.padding_global => (string, CssPropertyValue.box);
let paddingLeftString: string => (string, CssPropertyValue.box);
let paddingLeftNumber: float => (string, CssPropertyValue.box);

let clear: CssType.clear_global => (string, CssPropertyValue.box);

let color: CssType.color_global => (string, CssPropertyValue.box);
let colorString: string => (string, CssPropertyValue.box);

let cursor: CssType.cursorKeyword_global => (string, CssPropertyValue.box);
let cursor1: (
  CssType.cursorImage, 
  CssType.cursorKeyword
) => (string, CssPropertyValue.box);
let cursor2: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => (string, CssPropertyValue.box);
let cursor3: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => (string, CssPropertyValue.box);
let cursor4: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => (string, CssPropertyValue.box);
let cursorString: string => (string, CssPropertyValue.box);