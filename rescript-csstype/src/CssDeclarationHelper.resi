let property: (string, string) => [> CssDeclarationType.property ];
let propertyNumber: (string, float) => [> CssDeclarationType.property ];
let propertyInteger: (string, int) => [> CssDeclarationType.property ];

let border: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => [> CssDeclarationType.border ];
let borderString: string => [> CssDeclarationType.border ];

let borderTop: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => [> CssDeclarationType.borderTop ];
let borderTopString: string => [> CssDeclarationType.borderTop ];

let borderLeft: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => [> CssDeclarationType.borderLeft ];
let borderLeftString: string => [> CssDeclarationType.borderLeft ];

let borderRight: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => [> CssDeclarationType.borderRight ];
let borderRightString: string => [> CssDeclarationType.borderRight ];

let borderBottom: (
  ~width: CssType.lineWidth=?, 
  ~color: CssType.color=?, 
  CssType.lineStyle_global
) => [> CssDeclarationType.borderBottom ];
let borderBottomString: string => [> CssDeclarationType.borderBottom ];

let borderColor: CssType.color_global => [> CssDeclarationType.borderColor ];
let borderColor2: (
  ~tb: CssType.color, 
  ~lr: CssType.color
) => [> CssDeclarationType.borderColor ];
let borderColor3: (
  ~top: CssType.color, 
  ~lr: CssType.color, 
  ~bottom: CssType.color
) => [> CssDeclarationType.borderColor ];
let borderColor4: (
  ~top: CssType.color, 
  ~right: CssType.color, 
  ~bottom: CssType.color, 
  ~left: CssType.color
) => [> CssDeclarationType.borderColor ];
let borderColorString: string => [> CssDeclarationType.borderColor ];

let borderTopColor: CssType.color_global => [> CssDeclarationType.borderTopColor ];
let borderTopColorString: string => [> CssDeclarationType.borderTopColor ];

let borderRightColor: CssType.color_global => [> CssDeclarationType.borderRightColor ];
let borderRightColorString: string => [> CssDeclarationType.borderRightColor ];

let borderBottomColor: CssType.color_global => [> CssDeclarationType.borderBottomColor ];
let borderBottomColorString: string => [> CssDeclarationType.borderBottomColor ];

let borderLeftColor: CssType.color_global => [> CssDeclarationType.borderLeftColor ];
let borderLeftColorString: string => [> CssDeclarationType.borderLeftColor ];

let borderStyle: CssType.lineStyle_global => [> CssDeclarationType.borderStyle ];
let borderStyle2: (
  ~tb: CssType.lineStyle, 
  ~lr: CssType.lineStyle
) => [> CssDeclarationType.borderStyle ];
let borderStyle3: (
  ~top: CssType.lineStyle, 
  ~lr: CssType.lineStyle, 
  ~bottom: CssType.lineStyle
) => [> CssDeclarationType.borderStyle ];
let borderStyle4: (
  ~top: CssType.lineStyle, 
  ~right: CssType.lineStyle, 
  ~bottom: CssType.lineStyle, 
  ~left: CssType.lineStyle
) => [> CssDeclarationType.borderStyle ];
let borderStyleString: string => [> CssDeclarationType.borderStyle ];

let borderTopStyle: CssType.lineStyle_global => [> CssDeclarationType.borderTopStyle ];
let borderTopStyleString: string => [> CssDeclarationType.borderTopStyle ];

let borderRightStyle: CssType.lineStyle_global => [> CssDeclarationType.borderRightStyle ];
let borderRightStyleString: string => [> CssDeclarationType.borderRightStyle ];

let borderBottomStyle: CssType.lineStyle_global => [> CssDeclarationType.borderBottomStyle ];
let borderBottomStyleString: string => [> CssDeclarationType.borderBottomStyle ];

let borderLeftStyle: CssType.lineStyle_global => [> CssDeclarationType.borderLeftStyle ];
let borderLeftStyleString: string => [> CssDeclarationType.borderLeftStyle ];

let borderWidth: CssType.lineWidth_global => [> CssDeclarationType.borderWidth ];
let borderWidth2: (
  ~tb: CssType.lineWidth, 
  ~lr: CssType.lineWidth
) => [> CssDeclarationType.borderWidth ];
let borderWidth3: (
  ~top: CssType.lineWidth, 
  ~lr: CssType.lineWidth, 
  ~bottom: CssType.lineWidth
) => [> CssDeclarationType.borderWidth ];
let borderWidth4: (
  ~top: CssType.lineWidth, 
  ~right: CssType.lineWidth, 
  ~bottom: CssType.lineWidth, 
  ~left: CssType.lineWidth
) => [> CssDeclarationType.borderWidth ];
let borderWidthString: string => [> CssDeclarationType.borderWidth ];

let borderTopWidth: CssType.lineWidth_global => [> CssDeclarationType.borderTopWidth ];
let borderTopWidthString: string => [> CssDeclarationType.borderTopWidth ];

let borderRightWidth: CssType.lineWidth_global => [> CssDeclarationType.borderRightWidth ];
let borderRightWidthString: string => [> CssDeclarationType.borderRightWidth ];

let borderBottomWidth: CssType.lineWidth_global => [> CssDeclarationType.borderBottomWidth ];
let borderBottomWidthString: string => [> CssDeclarationType.borderBottomWidth ];

let borderLeftWidth: CssType.lineWidth_global => [> CssDeclarationType.borderLeftWidth ];
let borderLeftWidthString: string => [> CssDeclarationType.borderLeftWidth ];

let background: (
  ~color: CssType.color=?,
  ~position: CssType.position=?,
  ~size: CssType.bgSize=?,
  ~repeat: CssType.repeatStyle=?,
  ~attachment: CssType.attachment=?,
  ~origin: CssType.box=?,
  ~clip: CssType.box=?,
  [ | CssType.global | CssType.bgImage | CssType.color]
) => [> CssDeclarationType.background ];
let backgroundString: string => [> CssDeclarationType.background ];
let background2: (CssType.bgLayer, CssType.bgLayer) => [> CssDeclarationType.background ];
let background3: (
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer
) => [> CssDeclarationType.background ];
let background4: (
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer, 
  CssType.bgLayer
) => [> CssDeclarationType.background ];

let backgroundAttachment: CssType.attachment => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachment2: (
  CssType.attachment, 
  CssType.attachment
) => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachment3: (
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment
) => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachment4: (
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment, 
  CssType.attachment
) => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachmentString: string => [> CssDeclarationType.backgroundAttachment ];

let backgroundColor: CssType.color => [> CssDeclarationType.backgroundColor ];
let backgroundColorString: string => [> CssDeclarationType.backgroundColor ];

let backgroundImage: CssType.bgImage => [> CssDeclarationType.backgroundImage ];
let backgroundImage2: (
  CssType.bgImage, 
  CssType.bgImage
) => [> CssDeclarationType.backgroundImage ];
let backgroundImage3: (
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage
) => [> CssDeclarationType.backgroundImage ];
let backgroundImage4: (
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage, 
  CssType.bgImage
) => [> CssDeclarationType.backgroundImage ];
let backgroundImageString: string => [> CssDeclarationType.backgroundImage ];

let backgroundPosition: CssType.position => [> CssDeclarationType.backgroundPosition ];
let backgroundPosition2: (
  CssType.position, 
  CssType.position
) => [> CssDeclarationType.backgroundPosition ];
let backgroundPosition3: (
  CssType.position, 
  CssType.position, 
  CssType.position
) => [> CssDeclarationType.backgroundPosition ];
let backgroundPosition4: (
  CssType.position, 
  CssType.position, 
  CssType.position,
  CssType.position
) => [> CssDeclarationType.backgroundPosition ];
let backgroundPositionString: string => [> CssDeclarationType.backgroundPosition ];

let backgroundStyle: CssType.repeatStyle => [> CssDeclarationType.backgroundStyle ];
let backgroundStyle2: (
  CssType.repeatStyle, 
  CssType.repeatStyle
) => [> CssDeclarationType.backgroundStyle ];
let backgroundStyle3: (
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle
) => [> CssDeclarationType.backgroundStyle ];
let backgroundStyle4: (
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle, 
  CssType.repeatStyle
) => [> CssDeclarationType.backgroundStyle ];
let backgroundStyleString: string => [> CssDeclarationType.backgroundStyle ];

let margin: CssType.margin_global => [> CssDeclarationType.margin ];
let margin2: (
  ~tb: CssType.margin, 
  ~lr: CssType.margin
) => [> CssDeclarationType.margin ];
let margin3: (
  ~top: CssType.margin, 
  ~lr: CssType.margin, 
  ~bottom: CssType.margin
) => [> CssDeclarationType.margin ];
let margin4: (
  ~top: CssType.margin, 
  ~right: CssType.margin, 
  ~bottom: CssType.margin, 
  ~left: CssType.margin
) => [> CssDeclarationType.margin ];
let marginString: string => [> CssDeclarationType.margin ];
let marginNumber: float => [> CssDeclarationType.margin ];

let marginTop: CssType.margin_global => [> CssDeclarationType.marginTop ];
let marginTopString: string => [> CssDeclarationType.marginTop ];
let marginTopNumber: float => [> CssDeclarationType.marginTop ];

let marginRight: CssType.margin_global => [> CssDeclarationType.marginRight ];
let marginRightString: string => [> CssDeclarationType.marginRight ];
let marginRightNumber: float => [> CssDeclarationType.marginRight ];

let marginBottom: CssType.margin_global => [> CssDeclarationType.marginBottom ];
let marginBottomString: string => [> CssDeclarationType.marginBottom ];
let marginBottomNumber: float => [> CssDeclarationType.marginBottom ];

let marginLeft: CssType.margin_global => [> CssDeclarationType.marginLeft ];
let marginLeftString: string => [> CssDeclarationType.marginLeft ];
let marginLeftNumber: float => [> CssDeclarationType.marginLeft ];

let padding: CssType.padding_global => [> CssDeclarationType.padding ];
let padding2: (
  ~tb: CssType.padding, 
  ~lr: CssType.padding
) => [> CssDeclarationType.padding ];
let padding3: (
  ~top: CssType.padding, 
  ~lr: CssType.padding, 
  ~bottom: CssType.padding
) => [> CssDeclarationType.padding ];
let padding4: (
  ~top: CssType.padding, 
  ~right: CssType.padding, 
  ~bottom: CssType.padding, 
  ~left: CssType.padding
) => [> CssDeclarationType.padding ];
let paddingString: string => [> CssDeclarationType.padding ];
let paddingNumber: float => [> CssDeclarationType.padding ];

let paddingTop: CssType.padding_global => [> CssDeclarationType.paddingTop ];
let paddingTopString: string => [> CssDeclarationType.paddingTop ];
let paddingTopNumber: float => [> CssDeclarationType.paddingTop ];

let paddingRight: CssType.padding_global => [> CssDeclarationType.paddingRight ];
let paddingRightString: string => [> CssDeclarationType.paddingRight ];
let paddingRightNumber: float => [> CssDeclarationType.paddingRight ];

let paddingBottom: CssType.padding_global => [> CssDeclarationType.paddingBottom ];
let paddingBottomString: string => [> CssDeclarationType.paddingBottom ];
let paddingBottomNumber: float => [> CssDeclarationType.paddingBottom ];

let paddingLeft: CssType.padding_global => [> CssDeclarationType.paddingLeft ];
let paddingLeftString: string => [> CssDeclarationType.paddingLeft ];
let paddingLeftNumber: float => [> CssDeclarationType.paddingLeft ];

let clear: CssType.clear_global => [> CssDeclarationType.clear ];

let color: CssType.color_global => [> CssDeclarationType.color ];
let colorString: string => [> CssDeclarationType.color ];

let cursor: CssType.cursorKeyword_global => [> CssDeclarationType.cursor ];
let cursor1: (
  CssType.cursorImage, 
  CssType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursor2: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursor3: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursor4: (
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorImage, 
  CssType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursorString: string => [> CssDeclarationType.cursor ];