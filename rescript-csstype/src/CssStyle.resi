module Make: (
  Type: {
    type t;
  }
) => {
  type statement = 
    | Selector(string, Type.t)
    | FontFace(CssFontFace.t)
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
    | Cursor(CssPropertyValue.t_cursor);

  @unboxed
  type rec boxValue =
    | BoxValue('a): boxValue;

  let style: array<statement> => Type.t;

  let selector: (string, array<statement>) => statement;

  let fontFace: array<CssFontFace.descriptor> => statement;

  let property: (string, string) => statement;
  let propertyNumber: (string, float) => statement;
  let propertyInteger: (string, int) => statement;

  let border: (
    ~width: CssType.lineWidth=?, 
    ~color: CssType.color=?, 
    CssType.lineStyle_global
  ) => statement;
  let borderString: string => statement;

  let borderTop: (
    ~width: CssType.lineWidth=?, 
    ~color: CssType.color=?, 
    CssType.lineStyle_global
  ) => statement;
  let borderTopString: string => statement;

  let borderLeft: (
    ~width: CssType.lineWidth=?, 
    ~color: CssType.color=?, 
    CssType.lineStyle_global
  ) => statement;
  let borderLeftString: string => statement;

  let borderRight: (
    ~width: CssType.lineWidth=?, 
    ~color: CssType.color=?, 
    CssType.lineStyle_global
  ) => statement;
  let borderRightString: string => statement;

  let borderBottom: (
    ~width: CssType.lineWidth=?, 
    ~color: CssType.color=?, 
    CssType.lineStyle_global
  ) => statement;
  let borderBottomString: string => statement;

  let borderColor: CssType.color_global => statement;
  let borderColor2: (
    ~tb: CssType.color, 
    ~lr: CssType.color
  ) => statement;
  let borderColor3: (
    ~top: CssType.color, 
    ~lr: CssType.color, 
    ~bottom: CssType.color
  ) => statement;
  let borderColor4: (
    ~top: CssType.color, 
    ~right: CssType.color, 
    ~bottom: CssType.color, 
    ~left: CssType.color
  ) => statement;
  let borderColorString: string => statement;

  let borderTopColor: CssType.color_global => statement;
  let borderTopColorString: string => statement;

  let borderRightColor: CssType.color_global => statement;
  let borderRightColorString: string => statement;

  let borderBottomColor: CssType.color_global => statement;
  let borderBottomColorString: string => statement;

  let borderLeftColor: CssType.color_global => statement;
  let borderLeftColorString: string => statement;

  let borderStyle: CssType.lineStyle_global => statement;
  let borderStyle2: (
    ~tb: CssType.lineStyle, 
    ~lr: CssType.lineStyle
  ) => statement;
  let borderStyle3: (
    ~top: CssType.lineStyle, 
    ~lr: CssType.lineStyle, 
    ~bottom: CssType.lineStyle
  ) => statement;
  let borderStyle4: (
    ~top: CssType.lineStyle, 
    ~right: CssType.lineStyle, 
    ~bottom: CssType.lineStyle, 
    ~left: CssType.lineStyle
  ) => statement;
  let borderStyleString: string => statement;

  let borderTopStyle: CssType.lineStyle_global => statement;
  let borderTopStyleString: string => statement;

  let borderRightStyle: CssType.lineStyle_global => statement;
  let borderRightStyleString: string => statement;

  let borderBottomStyle: CssType.lineStyle_global => statement;
  let borderBottomStyleString: string => statement;

  let borderLeftStyle: CssType.lineStyle_global => statement;
  let borderLeftStyleString: string => statement;

  let borderWidth: CssType.lineWidth_global => statement;
  let borderWidth2: (
    ~tb: CssType.lineWidth, 
    ~lr: CssType.lineWidth
  ) => statement;
  let borderWidth3: (
    ~top: CssType.lineWidth, 
    ~lr: CssType.lineWidth, 
    ~bottom: CssType.lineWidth
  ) => statement;
  let borderWidth4: (
    ~top: CssType.lineWidth, 
    ~right: CssType.lineWidth, 
    ~bottom: CssType.lineWidth, 
    ~left: CssType.lineWidth
  ) => statement;
  let borderWidthString: string => statement;

  let borderTopWidth: CssType.lineWidth_global => statement;
  let borderTopWidthString: string => statement;

  let borderRightWidth: CssType.lineWidth_global => statement;
  let borderRightWidthString: string => statement;

  let borderBottomWidth: CssType.lineWidth_global => statement;
  let borderBottomWidthString: string => statement;

  let borderLeftWidth: CssType.lineWidth_global => statement;
  let borderLeftWidthString: string => statement;

  let background: (
    ~color: CssType.color=?,
    ~position: CssType.position=?,
    ~size: CssType.bgSize=?,
    ~repeat: CssType.repeatStyle=?,
    ~attachment: CssType.attachment=?,
    ~origin: CssType.box=?,
    ~clip: CssType.box=?,
    [ | CssType.global | CssType.bgImage | CssType.color]
  ) => statement;
  let backgroundString: string => statement;
  let background2: (CssType.bgLayer, CssType.bgLayer) => statement;
  let background3: (
    CssType.bgLayer, 
    CssType.bgLayer, 
    CssType.bgLayer
  ) => statement;
  let background4: (
    CssType.bgLayer, 
    CssType.bgLayer, 
    CssType.bgLayer, 
    CssType.bgLayer
  ) => statement;

  let backgroundAttachment: CssType.attachment => statement;
  let backgroundAttachment2: (
    CssType.attachment, 
    CssType.attachment
  ) => statement;
  let backgroundAttachment3: (
    CssType.attachment, 
    CssType.attachment, 
    CssType.attachment
  ) => statement;
  let backgroundAttachment4: (
    CssType.attachment, 
    CssType.attachment, 
    CssType.attachment, 
    CssType.attachment
  ) => statement;
  let backgroundAttachmentString: string => statement

  let backgroundColor: CssType.color => statement;
  let backgroundColorString: string => statement;

  let backgroundImage: CssType.bgImage => statement;
  let backgroundImage2: (
    CssType.bgImage, 
    CssType.bgImage
  ) => statement;
  let backgroundImage3: (
    CssType.bgImage, 
    CssType.bgImage, 
    CssType.bgImage
  ) => statement;
  let backgroundImage4: (
    CssType.bgImage, 
    CssType.bgImage, 
    CssType.bgImage, 
    CssType.bgImage
  ) => statement;
  let backgroundImageString: string => statement;

  let backgroundPosition: CssType.position => statement;
  let backgroundPosition2: (
    CssType.position, 
    CssType.position
  ) => statement;
  let backgroundPosition3: (
    CssType.position, 
    CssType.position, 
    CssType.position
  ) => statement;
  let backgroundPosition4: (
    CssType.position, 
    CssType.position, 
    CssType.position,
    CssType.position
  ) => statement;
  let backgroundPositionString: string => statement;

  let backgroundStyle: CssType.repeatStyle => statement;
  let backgroundStyle2: (
    CssType.repeatStyle, 
    CssType.repeatStyle
  ) => statement;
  let backgroundStyle3: (
    CssType.repeatStyle, 
    CssType.repeatStyle, 
    CssType.repeatStyle
  ) => statement;
  let backgroundStyle4: (
    CssType.repeatStyle, 
    CssType.repeatStyle, 
    CssType.repeatStyle, 
    CssType.repeatStyle
  ) => statement;
  let backgroundStyleString: string => statement;

  let margin: CssType.margin_global => statement;
  let margin2: (
    ~tb: CssType.margin, 
    ~lr: CssType.margin
  ) => statement;
  let margin3: (
    ~top: CssType.margin, 
    ~lr: CssType.margin, 
    ~bottom: CssType.margin
  ) => statement;
  let margin4: (
    ~top: CssType.margin, 
    ~right: CssType.margin, 
    ~bottom: CssType.margin, 
    ~left: CssType.margin
  ) => statement;
  let marginString: string => statement;
  let marginNumber: float => statement;

  let marginTop: CssType.margin_global => statement;
  let marginTopString: string => statement;
  let marginTopNumber: float => statement;

  let marginRight: CssType.margin_global => statement;
  let marginRightString: string => statement;
  let marginRightNumber: float => statement;

  let marginBottom: CssType.margin_global => statement;
  let marginBottomString: string => statement;
  let marginBottomNumber: float => statement;

  let marginLeft: CssType.margin_global => statement;
  let marginLeftString: string => statement;
  let marginLeftNumber: float => statement;

  let padding: CssType.padding_global => statement;
  let padding2: (
    ~tb: CssType.padding, 
    ~lr: CssType.padding
  ) => statement;
  let padding3: (
    ~top: CssType.padding, 
    ~lr: CssType.padding, 
    ~bottom: CssType.padding
  ) => statement;
  let padding4: (
    ~top: CssType.padding, 
    ~right: CssType.padding, 
    ~bottom: CssType.padding, 
    ~left: CssType.padding
  ) => statement;
  let paddingString: string => statement;
  let paddingNumber: float => statement;

  let paddingTop: CssType.padding_global => statement;
  let paddingTopString: string => statement;
  let paddingTopNumber: float => statement;

  let paddingRight: CssType.padding_global => statement;
  let paddingRightString: string => statement;
  let paddingRightNumber: float => statement;

  let paddingBottom: CssType.padding_global => statement;
  let paddingBottomString: string => statement;
  let paddingBottomNumber: float => statement;

  let paddingLeft: CssType.padding_global => statement;
  let paddingLeftString: string => statement;
  let paddingLeftNumber: float => statement;

  let clear: CssType.clear_global => statement;

  let color: CssType.color_global => statement;
  let colorString: string => statement;

  let cursor: CssType.cursorKeyword_global => statement;
  let cursor1: (
    CssType.cursorImage, 
    CssType.cursorKeyword
  ) => statement;
  let cursor2: (
    CssType.cursorImage, 
    CssType.cursorImage, 
    CssType.cursorKeyword
  ) => statement;
  let cursor3: (
    CssType.cursorImage, 
    CssType.cursorImage, 
    CssType.cursorImage, 
    CssType.cursorKeyword
  ) => statement;
  let cursor4: (
    CssType.cursorImage, 
    CssType.cursorImage, 
    CssType.cursorImage, 
    CssType.cursorImage, 
    CssType.cursorKeyword
  ) => statement;
  let cursorString: string => statement;
};