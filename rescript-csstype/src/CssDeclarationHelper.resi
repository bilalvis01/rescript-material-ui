let property: (string, 'a) => [> CssDeclarationType.property ];

let border: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationType.border ];
let borderUnion: CssBorder.t => [> CssDeclarationType.border ];
let borderString: string => [> CssDeclarationType.border ];

let borderTop: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationType.borderTop ];
let borderTopUnion: CssBorder.t => [> CssDeclarationType.borderTop ];
let borderTopString: string => [> CssDeclarationType.borderTop ];

let borderLeft: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationType.borderLeft ];
let borderLeftUnion: CssBorder.t => [> CssDeclarationType.borderLeft ]; 
let borderLeftString: string => [> CssDeclarationType.borderLeft ];

let borderRight: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationType.borderRight ];
let borderRightUnion: CssBorder.t => [> CssDeclarationType.borderRight ];
let borderRightString: string => [> CssDeclarationType.borderRight ];

let borderBottom: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationType.borderBottom ];
let borderBottomUnion: CssBorder.t => [> CssDeclarationType.borderBottom ]; 
let borderBottomString: string => [> CssDeclarationType.borderBottom ];

let borderColor: CssValueType.color_global => [> CssDeclarationType.borderColor ];
let borderColor2: (
  ~tb: CssValueType.color, 
  ~lr: CssValueType.color
) => [> CssDeclarationType.borderColor ];
let borderColor3: (
  ~top: CssValueType.color, 
  ~lr: CssValueType.color, 
  ~bottom: CssValueType.color
) => [> CssDeclarationType.borderColor ];
let borderColor4: (
  ~top: CssValueType.color, 
  ~right: CssValueType.color, 
  ~bottom: CssValueType.color, 
  ~left: CssValueType.color
) => [> CssDeclarationType.borderColor ];
let borderColorUnion: CssBorderColor.t => [> CssDeclarationType.borderColor ];
let borderColorString: string => [> CssDeclarationType.borderColor ];

let borderTopColor: CssValueType.color_global => [> CssDeclarationType.borderTopColor ];
let borderTopColorUnion: CssBorderTopColor.t => [> CssDeclarationType.borderTopColor ];
let borderTopColorString: string => [> CssDeclarationType.borderTopColor ];

let borderRightColor: CssValueType.color_global => [> CssDeclarationType.borderRightColor ];
let borderRightColorUnion: CssBorderRightColor.t => [> CssDeclarationType.borderRightColor ];
let borderRightColorString: string => [> CssDeclarationType.borderRightColor ];

let borderBottomColor: CssValueType.color_global => [> CssDeclarationType.borderBottomColor ];
let borderBottomColorUnion: CssBorderBottomColor.t => [> CssDeclarationType.borderBottomColor ];
let borderBottomColorString: string => [> CssDeclarationType.borderBottomColor ];

let borderLeftColor: CssValueType.color_global => [> CssDeclarationType.borderLeftColor ];
let borderLeftColorUnion: CssBorderLeftColor.t => [> CssDeclarationType.borderLeftColor ];
let borderLeftColorString: string => [> CssDeclarationType.borderLeftColor ];

let borderStyle: CssValueType.lineStyle_global => [> CssDeclarationType.borderStyle ];
let borderStyle2: (
  ~tb: CssValueType.lineStyle, 
  ~lr: CssValueType.lineStyle
) => [> CssDeclarationType.borderStyle ];
let borderStyle3: (
  ~top: CssValueType.lineStyle, 
  ~lr: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle
) => [> CssDeclarationType.borderStyle ];
let borderStyle4: (
  ~top: CssValueType.lineStyle, 
  ~right: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle, 
  ~left: CssValueType.lineStyle
) => [> CssDeclarationType.borderStyle ];
let borderStyleUnion: CssBorderStyle.t => [> CssDeclarationType.borderStyle ];
let borderStyleString: string => [> CssDeclarationType.borderStyle ];

let borderTopStyle: CssValueType.lineStyle_global => [> CssDeclarationType.borderTopStyle ];
let borderTopStyleUnion: CssBorderTopStyle.t => [> CssDeclarationType.borderTopStyle ];
let borderTopStyleString: string => [> CssDeclarationType.borderTopStyle ];

let borderRightStyle: CssValueType.lineStyle_global => [> CssDeclarationType.borderRightStyle ];
let borderRightStyleUnion: CssBorderRightStyle.t => [> CssDeclarationType.borderRightStyle ];
let borderRightStyleString: string => [> CssDeclarationType.borderRightStyle ];

let borderBottomStyle: CssValueType.lineStyle_global => [> CssDeclarationType.borderBottomStyle ];
let borderBottomStyleUnion: CssBorderBottomStyle.t => [> CssDeclarationType.borderBottomStyle ];
let borderBottomStyleString: string => [> CssDeclarationType.borderBottomStyle ];

let borderLeftStyle: CssValueType.lineStyle_global => [> CssDeclarationType.borderLeftStyle ];
let borderLeftStyleUnion: CssBorderLeftStyle.t => [> CssDeclarationType.borderLeftStyle ];
let borderLeftStyleString: string => [> CssDeclarationType.borderLeftStyle ];

let borderWidth: CssValueType.lineWidth_global => [> CssDeclarationType.borderWidth ];
let borderWidth2: (
  ~tb: CssValueType.lineWidth, 
  ~lr: CssValueType.lineWidth
) => [> CssDeclarationType.borderWidth ];
let borderWidth3: (
  ~top: CssValueType.lineWidth, 
  ~lr: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth
) => [> CssDeclarationType.borderWidth ];
let borderWidth4: (
  ~top: CssValueType.lineWidth, 
  ~right: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth, 
  ~left: CssValueType.lineWidth
) => [> CssDeclarationType.borderWidth ];
let borderWidthUnion: CssBorderWidth.t => [> CssDeclarationType.borderWidth ];
let borderWidthString: string => [> CssDeclarationType.borderWidth ];

let borderTopWidth: CssValueType.lineWidth_global => [> CssDeclarationType.borderTopWidth ];
let borderTopWidthUnion: CssBorderTopWidth.t => [> CssDeclarationType.borderTopWidth ];
let borderTopWidthString: string => [> CssDeclarationType.borderTopWidth ];

let borderRightWidth: CssValueType.lineWidth_global => [> CssDeclarationType.borderRightWidth ];
let borderRightWidthUnion: CssBorderRightWidth.t => [> CssDeclarationType.borderRightWidth ];
let borderRightWidthString: string => [> CssDeclarationType.borderRightWidth ];

let borderBottomWidth: CssValueType.lineWidth_global => [> CssDeclarationType.borderBottomWidth ];
let borderBottomWidthUnion: CssBorderBottomWidth.t => [> CssDeclarationType.borderBottomWidth ];
let borderBottomWidthString: string => [> CssDeclarationType.borderBottomWidth ];

let borderLeftWidth: CssValueType.lineWidth_global => [> CssDeclarationType.borderLeftWidth ];
let borderLeftWidthUnion: CssBorderLeftWidth.t => [> CssDeclarationType.borderLeftWidth ];
let borderLeftWidthString: string => [> CssDeclarationType.borderLeftWidth ];

let background: (
  ~color: CssValueType.color=?,
  ~position: CssValueType.position=?,
  ~size: CssValueType.bgSize=?,
  ~repeat: CssValueType.repeatStyle=?,
  ~attachment: CssValueType.attachment=?,
  ~origin: CssValueType.box=?,
  ~clip: CssValueType.box=?,
  [ | CssValueType.global | CssValueType.bgImage | CssValueType.color]
) => [> CssDeclarationType.background ];
let background2: (CssValueType.bgLayer, CssValueType.bgLayer) => [> CssDeclarationType.background ];
let background3: (
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer
) => [> CssDeclarationType.background ];
let background4: (
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer
) => [> CssDeclarationType.background ];
let backgroundUnion: CssBackground.t => [> CssDeclarationType.background ];
let backgroundString: string => [> CssDeclarationType.background ];

let backgroundAttachment: CssValueType.attachment => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachment2: (
  CssValueType.attachment, 
  CssValueType.attachment
) => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachment3: (
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment
) => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachment4: (
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment
) => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachmentUnion: CssBackgroundAttachment.t => [> CssDeclarationType.backgroundAttachment ];
let backgroundAttachmentString: string => [> CssDeclarationType.backgroundAttachment ];

let backgroundColor: CssValueType.color => [> CssDeclarationType.backgroundColor ];
let backgroundColorUnion: CssBackgroundColor.t => [> CssDeclarationType.backgroundColor ];
let backgroundColorString: string => [> CssDeclarationType.backgroundColor ];

let backgroundImage: CssValueType.bgImage => [> CssDeclarationType.backgroundImage ];
let backgroundImage2: (
  CssValueType.bgImage, 
  CssValueType.bgImage
) => [> CssDeclarationType.backgroundImage ];
let backgroundImage3: (
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage
) => [> CssDeclarationType.backgroundImage ];
let backgroundImage4: (
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage
) => [> CssDeclarationType.backgroundImage ];
let backgroundImageUnion: CssBackgroundImage.t => [> CssDeclarationType.backgroundImage ];
let backgroundImageString: string => [> CssDeclarationType.backgroundImage ];

let backgroundPosition: CssValueType.position => [> CssDeclarationType.backgroundPosition ];
let backgroundPosition2: (
  CssValueType.position, 
  CssValueType.position
) => [> CssDeclarationType.backgroundPosition ];
let backgroundPosition3: (
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position
) => [> CssDeclarationType.backgroundPosition ];
let backgroundPosition4: (
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position,
  CssValueType.position
) => [> CssDeclarationType.backgroundPosition ];
let backgroundPositionUnion: CssBackgroundPosition.t => [> CssDeclarationType.backgroundPosition ];
let backgroundPositionString: string => [> CssDeclarationType.backgroundPosition ];

let backgroundStyle: CssValueType.repeatStyle => [> CssDeclarationType.backgroundStyle ];
let backgroundStyle2: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => [> CssDeclarationType.backgroundStyle ];
let backgroundStyle3: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => [> CssDeclarationType.backgroundStyle ];
let backgroundStyle4: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => [> CssDeclarationType.backgroundStyle ];
let backgroundStyleUnion: CssBackgroundStyle.t => [> CssDeclarationType.backgroundStyle ];
let backgroundStyleString: string => [> CssDeclarationType.backgroundStyle ];

let margin: CssValueType.margin_global => [> CssDeclarationType.margin ];
let margin2: (
  ~tb: CssValueType.margin, 
  ~lr: CssValueType.margin
) => [> CssDeclarationType.margin ];
let margin3: (
  ~top: CssValueType.margin, 
  ~lr: CssValueType.margin, 
  ~bottom: CssValueType.margin
) => [> CssDeclarationType.margin ];
let margin4: (
  ~top: CssValueType.margin, 
  ~right: CssValueType.margin, 
  ~bottom: CssValueType.margin, 
  ~left: CssValueType.margin
) => [> CssDeclarationType.margin ];
let marginUnion: CssMargin.t => [> CssDeclarationType.margin ];
let marginString: string => [> CssDeclarationType.margin ];
let marginNumber: float => [> CssDeclarationType.margin ];

let marginTop: CssValueType.margin_global => [> CssDeclarationType.marginTop ];
let marginTopUnion: CssMarginTop.t => [> CssDeclarationType.marginTop ];
let marginTopString: string => [> CssDeclarationType.marginTop ];
let marginTopNumber: float => [> CssDeclarationType.marginTop ];

let marginRight: CssValueType.margin_global => [> CssDeclarationType.marginRight ];
let marginRightUnion: CssMarginRight.t => [> CssDeclarationType.marginRight ];
let marginRightString: string => [> CssDeclarationType.marginRight ];
let marginRightNumber: float => [> CssDeclarationType.marginRight ];

let marginBottom: CssValueType.margin_global => [> CssDeclarationType.marginBottom ];
let marginBottomUnion: CssMarginBottom.t => [> CssDeclarationType.marginBottom ];
let marginBottomString: string => [> CssDeclarationType.marginBottom ];
let marginBottomNumber: float => [> CssDeclarationType.marginBottom ];

let marginLeft: CssValueType.margin_global => [> CssDeclarationType.marginLeft ];
let marginLeftUnion: CssMarginLeft.t => [> CssDeclarationType.marginLeft ];
let marginLeftString: string => [> CssDeclarationType.marginLeft ];
let marginLeftNumber: float => [> CssDeclarationType.marginLeft ];

let padding: CssValueType.padding_global => [> CssDeclarationType.padding ];
let padding2: (
  ~tb: CssValueType.padding, 
  ~lr: CssValueType.padding
) => [> CssDeclarationType.padding ];
let padding3: (
  ~top: CssValueType.padding, 
  ~lr: CssValueType.padding, 
  ~bottom: CssValueType.padding
) => [> CssDeclarationType.padding ];
let padding4: (
  ~top: CssValueType.padding, 
  ~right: CssValueType.padding, 
  ~bottom: CssValueType.padding, 
  ~left: CssValueType.padding
) => [> CssDeclarationType.padding ];
let paddingUnion: CssPadding.t => [> CssDeclarationType.padding ];
let paddingString: string => [> CssDeclarationType.padding ];
let paddingNumber: float => [> CssDeclarationType.padding ];

let paddingTop: CssValueType.padding_global => [> CssDeclarationType.paddingTop ];
let paddingTopUnion: CssPaddingTop.t => [> CssDeclarationType.paddingTop ];
let paddingTopString: string => [> CssDeclarationType.paddingTop ];
let paddingTopNumber: float => [> CssDeclarationType.paddingTop ];

let paddingRight: CssValueType.padding_global => [> CssDeclarationType.paddingRight ];
let paddingRightUnion: CssPaddingRight.t => [> CssDeclarationType.paddingRight ];
let paddingRightString: string => [> CssDeclarationType.paddingRight ];
let paddingRightNumber: float => [> CssDeclarationType.paddingRight ];

let paddingBottom: CssValueType.padding_global => [> CssDeclarationType.paddingBottom ];
let paddingBottomUnion: CssPaddingBottom.t => [> CssDeclarationType.paddingBottom ];
let paddingBottomString: string => [> CssDeclarationType.paddingBottom ];
let paddingBottomNumber: float => [> CssDeclarationType.paddingBottom ];

let paddingLeft: CssValueType.padding_global => [> CssDeclarationType.paddingLeft ];
let paddingLeftUnion: CssPaddingLeft.t => [> CssDeclarationType.paddingLeft ];
let paddingLeftString: string => [> CssDeclarationType.paddingLeft ];
let paddingLeftNumber: float => [> CssDeclarationType.paddingLeft ];

let clear: CssValueType.clear_global => [> CssDeclarationType.clear ];

let color: CssValueType.color_global => [> CssDeclarationType.color ];
let colorUnion: CssColor.t => [> CssDeclarationType.color ];
let colorString: string => [> CssDeclarationType.color ];

let cursor: CssValueType.cursorKeyword_global => [> CssDeclarationType.cursor ];
let cursor1: (
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursor2: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursor3: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursor4: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationType.cursor ];
let cursorUnion: CssCursor.t => [> CssDeclarationType.cursor ];
let cursorString: string => [> CssDeclarationType.cursor ];

let fontWeight: CssValueType.fontWeight_global => [> CssDeclarationType.fontWeight ];
let fontWeightUnion: CssFontWeight.t => [> CssDeclarationType.fontWeight ];
let fontWeightString: string => [> CssDeclarationType.fontWeight ];
let fontWeightNumber: float => [> CssDeclarationType.fontWeight ];

let fontFamily: CssValueType.fontFamily_global => [> CssDeclarationType.fontFamily ];
let fontFamily2: (
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => [> CssDeclarationType.fontFamily ];
let fontFamily3: (
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => [> CssDeclarationType.fontFamily ];
let fontFamily4: (
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => [> CssDeclarationType.fontFamily ];
let fontFamilyUnion: CssFontFamily.t => [> CssDeclarationType.fontFamily ];
let fontFamilyString: string => [> CssDeclarationType.fontFamily ];