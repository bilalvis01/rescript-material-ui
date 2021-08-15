let property: (string, 'a) => [> CssDeclarationConstructor.property ];

let border: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationConstructor.border ];
let borderUnion: CssBorder.t => [> CssDeclarationConstructor.border ];
let borderString: string => [> CssDeclarationConstructor.border ];

let borderTop: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationConstructor.borderTop ];
let borderTopUnion: CssBorder.t => [> CssDeclarationConstructor.borderTop ];
let borderTopString: string => [> CssDeclarationConstructor.borderTop ];

let borderLeft: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationConstructor.borderLeft ];
let borderLeftUnion: CssBorder.t => [> CssDeclarationConstructor.borderLeft ]; 
let borderLeftString: string => [> CssDeclarationConstructor.borderLeft ];

let borderRight: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationConstructor.borderRight ];
let borderRightUnion: CssBorder.t => [> CssDeclarationConstructor.borderRight ];
let borderRightString: string => [> CssDeclarationConstructor.borderRight ];

let borderBottom: (
  ~width: CssValueType.lineWidth=?, 
  ~color: CssValueType.color=?, 
  CssValueType.lineStyle_global
) => [> CssDeclarationConstructor.borderBottom ];
let borderBottomUnion: CssBorder.t => [> CssDeclarationConstructor.borderBottom ]; 
let borderBottomString: string => [> CssDeclarationConstructor.borderBottom ];

let borderColor: CssValueType.color_global => [> CssDeclarationConstructor.borderColor ];
let borderColor2: (
  ~tb: CssValueType.color, 
  ~lr: CssValueType.color
) => [> CssDeclarationConstructor.borderColor ];
let borderColor3: (
  ~top: CssValueType.color, 
  ~lr: CssValueType.color, 
  ~bottom: CssValueType.color
) => [> CssDeclarationConstructor.borderColor ];
let borderColor4: (
  ~top: CssValueType.color, 
  ~right: CssValueType.color, 
  ~bottom: CssValueType.color, 
  ~left: CssValueType.color
) => [> CssDeclarationConstructor.borderColor ];
let borderColorUnion: CssBorderColor.t => [> CssDeclarationConstructor.borderColor ];
let borderColorString: string => [> CssDeclarationConstructor.borderColor ];

let borderTopColor: CssValueType.color_global => [> CssDeclarationConstructor.borderTopColor ];
let borderTopColorUnion: CssBorderTopColor.t => [> CssDeclarationConstructor.borderTopColor ];
let borderTopColorString: string => [> CssDeclarationConstructor.borderTopColor ];

let borderRightColor: CssValueType.color_global => [> CssDeclarationConstructor.borderRightColor ];
let borderRightColorUnion: CssBorderRightColor.t => [> CssDeclarationConstructor.borderRightColor ];
let borderRightColorString: string => [> CssDeclarationConstructor.borderRightColor ];

let borderBottomColor: CssValueType.color_global => [> CssDeclarationConstructor.borderBottomColor ];
let borderBottomColorUnion: CssBorderBottomColor.t => [> CssDeclarationConstructor.borderBottomColor ];
let borderBottomColorString: string => [> CssDeclarationConstructor.borderBottomColor ];

let borderLeftColor: CssValueType.color_global => [> CssDeclarationConstructor.borderLeftColor ];
let borderLeftColorUnion: CssBorderLeftColor.t => [> CssDeclarationConstructor.borderLeftColor ];
let borderLeftColorString: string => [> CssDeclarationConstructor.borderLeftColor ];

let borderStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.borderStyle ];
let borderStyle2: (
  ~tb: CssValueType.lineStyle, 
  ~lr: CssValueType.lineStyle
) => [> CssDeclarationConstructor.borderStyle ];
let borderStyle3: (
  ~top: CssValueType.lineStyle, 
  ~lr: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle
) => [> CssDeclarationConstructor.borderStyle ];
let borderStyle4: (
  ~top: CssValueType.lineStyle, 
  ~right: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle, 
  ~left: CssValueType.lineStyle
) => [> CssDeclarationConstructor.borderStyle ];
let borderStyleUnion: CssBorderStyle.t => [> CssDeclarationConstructor.borderStyle ];
let borderStyleString: string => [> CssDeclarationConstructor.borderStyle ];

let borderTopStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.borderTopStyle ];
let borderTopStyleUnion: CssBorderTopStyle.t => [> CssDeclarationConstructor.borderTopStyle ];
let borderTopStyleString: string => [> CssDeclarationConstructor.borderTopStyle ];

let borderRightStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.borderRightStyle ];
let borderRightStyleUnion: CssBorderRightStyle.t => [> CssDeclarationConstructor.borderRightStyle ];
let borderRightStyleString: string => [> CssDeclarationConstructor.borderRightStyle ];

let borderBottomStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.borderBottomStyle ];
let borderBottomStyleUnion: CssBorderBottomStyle.t => [> CssDeclarationConstructor.borderBottomStyle ];
let borderBottomStyleString: string => [> CssDeclarationConstructor.borderBottomStyle ];

let borderLeftStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.borderLeftStyle ];
let borderLeftStyleUnion: CssBorderLeftStyle.t => [> CssDeclarationConstructor.borderLeftStyle ];
let borderLeftStyleString: string => [> CssDeclarationConstructor.borderLeftStyle ];

let borderWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.borderWidth ];
let borderWidth2: (
  ~tb: CssValueType.lineWidth, 
  ~lr: CssValueType.lineWidth
) => [> CssDeclarationConstructor.borderWidth ];
let borderWidth3: (
  ~top: CssValueType.lineWidth, 
  ~lr: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth
) => [> CssDeclarationConstructor.borderWidth ];
let borderWidth4: (
  ~top: CssValueType.lineWidth, 
  ~right: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth, 
  ~left: CssValueType.lineWidth
) => [> CssDeclarationConstructor.borderWidth ];
let borderWidthUnion: CssBorderWidth.t => [> CssDeclarationConstructor.borderWidth ];
let borderWidthString: string => [> CssDeclarationConstructor.borderWidth ];

let borderTopWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.borderTopWidth ];
let borderTopWidthUnion: CssBorderTopWidth.t => [> CssDeclarationConstructor.borderTopWidth ];
let borderTopWidthString: string => [> CssDeclarationConstructor.borderTopWidth ];

let borderRightWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.borderRightWidth ];
let borderRightWidthUnion: CssBorderRightWidth.t => [> CssDeclarationConstructor.borderRightWidth ];
let borderRightWidthString: string => [> CssDeclarationConstructor.borderRightWidth ];

let borderBottomWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.borderBottomWidth ];
let borderBottomWidthUnion: CssBorderBottomWidth.t => [> CssDeclarationConstructor.borderBottomWidth ];
let borderBottomWidthString: string => [> CssDeclarationConstructor.borderBottomWidth ];

let borderLeftWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.borderLeftWidth ];
let borderLeftWidthUnion: CssBorderLeftWidth.t => [> CssDeclarationConstructor.borderLeftWidth ];
let borderLeftWidthString: string => [> CssDeclarationConstructor.borderLeftWidth ];

let background: (
  ~color: CssValueType.color=?,
  ~position: CssValueType.position=?,
  ~size: CssValueType.bgSize=?,
  ~repeat: CssValueType.repeatStyle=?,
  ~attachment: CssValueType.attachment=?,
  ~origin: CssValueType.box=?,
  ~clip: CssValueType.box=?,
  [ | CssValueType.global | CssValueType.bgImage | CssValueType.color]
) => [> CssDeclarationConstructor.background ];
let background2: (CssValueType.bgLayer, CssValueType.bgLayer) => [> CssDeclarationConstructor.background ];
let background3: (
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer
) => [> CssDeclarationConstructor.background ];
let background4: (
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer, 
  CssValueType.bgLayer
) => [> CssDeclarationConstructor.background ];
let backgroundUnion: CssBackground.t => [> CssDeclarationConstructor.background ];
let backgroundString: string => [> CssDeclarationConstructor.background ];

let backgroundAttachment: CssValueType.attachment => [> CssDeclarationConstructor.backgroundAttachment ];
let backgroundAttachment2: (
  CssValueType.attachment, 
  CssValueType.attachment
) => [> CssDeclarationConstructor.backgroundAttachment ];
let backgroundAttachment3: (
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment
) => [> CssDeclarationConstructor.backgroundAttachment ];
let backgroundAttachment4: (
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment
) => [> CssDeclarationConstructor.backgroundAttachment ];
let backgroundAttachmentUnion: CssBackgroundAttachment.t => [> CssDeclarationConstructor.backgroundAttachment ];
let backgroundAttachmentString: string => [> CssDeclarationConstructor.backgroundAttachment ];

let backgroundColor: CssValueType.color => [> CssDeclarationConstructor.backgroundColor ];
let backgroundColorUnion: CssBackgroundColor.t => [> CssDeclarationConstructor.backgroundColor ];
let backgroundColorString: string => [> CssDeclarationConstructor.backgroundColor ];

let backgroundImage: CssValueType.bgImage => [> CssDeclarationConstructor.backgroundImage ];
let backgroundImage2: (
  CssValueType.bgImage, 
  CssValueType.bgImage
) => [> CssDeclarationConstructor.backgroundImage ];
let backgroundImage3: (
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage
) => [> CssDeclarationConstructor.backgroundImage ];
let backgroundImage4: (
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage
) => [> CssDeclarationConstructor.backgroundImage ];
let backgroundImageUnion: CssBackgroundImage.t => [> CssDeclarationConstructor.backgroundImage ];
let backgroundImageString: string => [> CssDeclarationConstructor.backgroundImage ];

let backgroundPosition: CssValueType.position => [> CssDeclarationConstructor.backgroundPosition ];
let backgroundPosition2: (
  CssValueType.position, 
  CssValueType.position
) => [> CssDeclarationConstructor.backgroundPosition ];
let backgroundPosition3: (
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position
) => [> CssDeclarationConstructor.backgroundPosition ];
let backgroundPosition4: (
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position,
  CssValueType.position
) => [> CssDeclarationConstructor.backgroundPosition ];
let backgroundPositionUnion: CssBackgroundPosition.t => [> CssDeclarationConstructor.backgroundPosition ];
let backgroundPositionString: string => [> CssDeclarationConstructor.backgroundPosition ];

let backgroundStyle: CssValueType.repeatStyle => [> CssDeclarationConstructor.backgroundStyle ];
let backgroundStyle2: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => [> CssDeclarationConstructor.backgroundStyle ];
let backgroundStyle3: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => [> CssDeclarationConstructor.backgroundStyle ];
let backgroundStyle4: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => [> CssDeclarationConstructor.backgroundStyle ];
let backgroundStyleUnion: CssBackgroundStyle.t => [> CssDeclarationConstructor.backgroundStyle ];
let backgroundStyleString: string => [> CssDeclarationConstructor.backgroundStyle ];

let margin: CssValueType.margin_global => [> CssDeclarationConstructor.margin ];
let margin2: (
  ~tb: CssValueType.margin, 
  ~lr: CssValueType.margin
) => [> CssDeclarationConstructor.margin ];
let margin3: (
  ~top: CssValueType.margin, 
  ~lr: CssValueType.margin, 
  ~bottom: CssValueType.margin
) => [> CssDeclarationConstructor.margin ];
let margin4: (
  ~top: CssValueType.margin, 
  ~right: CssValueType.margin, 
  ~bottom: CssValueType.margin, 
  ~left: CssValueType.margin
) => [> CssDeclarationConstructor.margin ];
let marginUnion: CssMargin.t => [> CssDeclarationConstructor.margin ];
let marginString: string => [> CssDeclarationConstructor.margin ];
let marginNumber: float => [> CssDeclarationConstructor.margin ];

let marginTop: CssValueType.margin_global => [> CssDeclarationConstructor.marginTop ];
let marginTopUnion: CssMarginTop.t => [> CssDeclarationConstructor.marginTop ];
let marginTopString: string => [> CssDeclarationConstructor.marginTop ];
let marginTopNumber: float => [> CssDeclarationConstructor.marginTop ];

let marginRight: CssValueType.margin_global => [> CssDeclarationConstructor.marginRight ];
let marginRightUnion: CssMarginRight.t => [> CssDeclarationConstructor.marginRight ];
let marginRightString: string => [> CssDeclarationConstructor.marginRight ];
let marginRightNumber: float => [> CssDeclarationConstructor.marginRight ];

let marginBottom: CssValueType.margin_global => [> CssDeclarationConstructor.marginBottom ];
let marginBottomUnion: CssMarginBottom.t => [> CssDeclarationConstructor.marginBottom ];
let marginBottomString: string => [> CssDeclarationConstructor.marginBottom ];
let marginBottomNumber: float => [> CssDeclarationConstructor.marginBottom ];

let marginLeft: CssValueType.margin_global => [> CssDeclarationConstructor.marginLeft ];
let marginLeftUnion: CssMarginLeft.t => [> CssDeclarationConstructor.marginLeft ];
let marginLeftString: string => [> CssDeclarationConstructor.marginLeft ];
let marginLeftNumber: float => [> CssDeclarationConstructor.marginLeft ];

let padding: CssValueType.padding_global => [> CssDeclarationConstructor.padding ];
let padding2: (
  ~tb: CssValueType.padding, 
  ~lr: CssValueType.padding
) => [> CssDeclarationConstructor.padding ];
let padding3: (
  ~top: CssValueType.padding, 
  ~lr: CssValueType.padding, 
  ~bottom: CssValueType.padding
) => [> CssDeclarationConstructor.padding ];
let padding4: (
  ~top: CssValueType.padding, 
  ~right: CssValueType.padding, 
  ~bottom: CssValueType.padding, 
  ~left: CssValueType.padding
) => [> CssDeclarationConstructor.padding ];
let paddingUnion: CssPadding.t => [> CssDeclarationConstructor.padding ];
let paddingString: string => [> CssDeclarationConstructor.padding ];
let paddingNumber: float => [> CssDeclarationConstructor.padding ];

let paddingTop: CssValueType.padding_global => [> CssDeclarationConstructor.paddingTop ];
let paddingTopUnion: CssPaddingTop.t => [> CssDeclarationConstructor.paddingTop ];
let paddingTopString: string => [> CssDeclarationConstructor.paddingTop ];
let paddingTopNumber: float => [> CssDeclarationConstructor.paddingTop ];

let paddingRight: CssValueType.padding_global => [> CssDeclarationConstructor.paddingRight ];
let paddingRightUnion: CssPaddingRight.t => [> CssDeclarationConstructor.paddingRight ];
let paddingRightString: string => [> CssDeclarationConstructor.paddingRight ];
let paddingRightNumber: float => [> CssDeclarationConstructor.paddingRight ];

let paddingBottom: CssValueType.padding_global => [> CssDeclarationConstructor.paddingBottom ];
let paddingBottomUnion: CssPaddingBottom.t => [> CssDeclarationConstructor.paddingBottom ];
let paddingBottomString: string => [> CssDeclarationConstructor.paddingBottom ];
let paddingBottomNumber: float => [> CssDeclarationConstructor.paddingBottom ];

let paddingLeft: CssValueType.padding_global => [> CssDeclarationConstructor.paddingLeft ];
let paddingLeftUnion: CssPaddingLeft.t => [> CssDeclarationConstructor.paddingLeft ];
let paddingLeftString: string => [> CssDeclarationConstructor.paddingLeft ];
let paddingLeftNumber: float => [> CssDeclarationConstructor.paddingLeft ];

let clear: CssValueType.clear_global => [> CssDeclarationConstructor.clear ];

let color: CssValueType.color_global => [> CssDeclarationConstructor.color ];
let colorUnion: CssColor.t => [> CssDeclarationConstructor.color ];
let colorString: string => [> CssDeclarationConstructor.color ];

let cursor: CssValueType.cursorKeyword_global => [> CssDeclarationConstructor.cursor ];
let cursor1: (
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationConstructor.cursor ];
let cursor2: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationConstructor.cursor ];
let cursor3: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationConstructor.cursor ];
let cursor4: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => [> CssDeclarationConstructor.cursor ];
let cursorUnion: CssCursor.t => [> CssDeclarationConstructor.cursor ];
let cursorString: string => [> CssDeclarationConstructor.cursor ];

let fontWeight: CssValueType.fontWeight_global => [> CssDeclarationConstructor.fontWeight ];
let fontWeightUnion: CssFontWeight.t => [> CssDeclarationConstructor.fontWeight ];
let fontWeightString: string => [> CssDeclarationConstructor.fontWeight ];
let fontWeightNumber: float => [> CssDeclarationConstructor.fontWeight ];

let fontFamily: CssValueType.fontFamily_global => [> CssDeclarationConstructor.fontFamily ];
let fontFamily2: (
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => [> CssDeclarationConstructor.fontFamily ];
let fontFamily3: (
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => [> CssDeclarationConstructor.fontFamily ];
let fontFamily4: (
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => [> CssDeclarationConstructor.fontFamily ];
let fontFamilyUnion: CssFontFamily.t => [> CssDeclarationConstructor.fontFamily ];
let fontFamilyString: string => [> CssDeclarationConstructor.fontFamily ];