let property = (name, value) => 
  #Property(name, CssDeclarationConstructor.PropertyValue(value));

let border = (~width=?, ~color=?, style) => 
  #Border(CssBorder.value(~width=?width, ~color=?color, style));
let borderUnion = v => 
  #Border(v);
let borderString = v => 
  #Border(CssBorder.string(v));

let borderTop = (~width=?, ~color=?, style) => 
  #BorderTop(CssBorder.value(~width=?width, ~color=?color, style));
let borderTopUnion = v =>
  #BorderTop(v);
let borderTopString = v => 
  #BorderTop(CssBorder.string(v));

let borderLeft = (~width=?, ~color=?, style) => 
  #BorderLeft(CssBorder.value(~width=?width, ~color=?color, style));
let borderLeftUnion = v =>
  #BorderLeft(v);
let borderLeftString = v => 
  #BorderLeft(CssBorder.string(v));

let borderRight = (~width=?, ~color=?, style) => 
  #BorderRight(CssBorder.value(~width=?width, ~color=?color, style));
let borderRightUnion = v =>
  #BorderRight(v);
let borderRightString = v => 
  #BorderRight(CssBorder.string(v));

let borderBottom = (~width=?, ~color=?, style) => 
  #BorderBottom(CssBorder.value(~width=?width, ~color=?color, style));
let borderBottomUnion = v =>
  #BorderBottom(v);
let borderBottomString = v => 
  #BorderBottom(CssBorder.string(v));

let borderColor = v => 
  #BorderColor(CssBorderColor.value(v));
let borderColor2 = (~tb, ~lr) => 
  #BorderColor(CssBorderColor.value2(~tb, ~lr));
let borderColor3 = (~top, ~lr, ~bottom) =>
  #BorderColor(CssBorderColor.value3(~top, ~lr, ~bottom));
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  #BorderColor(CssBorderColor.value4(~top, ~right, ~bottom, ~left));
let borderColorUnion = v =>
  #BorderColor(v);
let borderColorString = v => 
  #BorderColor(CssBorderColor.string(v));

let borderTopColor = v => 
  #BorderTopColor(CssBorderTopColor.value(v));
let borderTopColorUnion = v =>
  #BorderTopColor(v);
let borderTopColorString = v => 
  #BorderTopColor(CssBorderTopColor.string(v));

let borderRightColor = v => 
  #BorderRightColor(CssBorderRightColor.value(v));
let borderRightColorUnion = v =>
  #BorderRightColor(v);
let borderRightColorString = v => 
  #BorderRightColor(CssBorderRightColor.string(v));

let borderBottomColor = v => 
  #BorderBottomColor(CssBorderBottomColor.value(v));
let borderBottomColorUnion = v =>
  #BorderBottomColor(v);
let borderBottomColorString = v => 
  #BorderBottomColor(CssBorderBottomColor.string(v));

let borderLeftColor = v => 
  #BorderLeftColor(CssBorderLeftColor.value(v));
let borderLeftColorUnion = v =>
  #BorderLeftColor(v);
let borderLeftColorString = v => 
  #BorderLeftColor(CssBorderLeftColor.string(v));

let borderStyle = v => 
  #BorderStyle(CssBorderStyle.value(v));
let borderStyle2 = (~tb, ~lr) => 
  #BorderStyle(CssBorderStyle.value2(~tb, ~lr));
let borderStyle3 = (~top, ~lr, ~bottom) =>
  #BorderStyle(CssBorderStyle.value3(~top, ~lr, ~bottom));
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  #BorderStyle(CssBorderStyle.value4(~top, ~right, ~bottom, ~left));
let borderStyleUnion = v =>
  #BorderStyle(v);
let borderStyleString = v => 
  #BorderStyle(CssBorderStyle.string(v));

let borderTopStyle = v => 
  #BorderTopStyle(CssBorderTopStyle.value(v));
let borderTopStyleUnion = v =>
  #BorderTopStyle(v);
let borderTopStyleString = v => 
  #BorderTopStyle(CssBorderTopStyle.string(v));

let borderRightStyle = v => 
  #BorderRightStyle(CssBorderRightStyle.value(v));
let borderRightStyleUnion = v =>
  #BorderRightStyle(v);
let borderRightStyleString = v => 
  #BorderRightStyle(CssBorderRightStyle.string(v));

let borderBottomStyle = v => 
  #BorderBottomStyle(CssBorderBottomStyle.value(v));
let borderBottomStyleUnion = v =>
  #BorderBottomStyle(v);
let borderBottomStyleString = v =>
  #BorderBottomStyle(CssBorderBottomStyle.string(v));

let borderLeftStyle = v => 
  #BorderLeftStyle(CssBorderLeftStyle.value(v));
let borderLeftStyleUnion = v =>
  #BorderLeftStyle(v);
let borderLeftStyleString = v => 
  #BorderLeftStyle(CssBorderLeftStyle.string(v));

let borderWidth = v => 
  #BorderWidth(CssBorderWidth.value(v));
let borderWidth2 = (~tb, ~lr) => 
  #BorderWidth(CssBorderWidth.value2(~tb, ~lr));
let borderWidth3 = (~top, ~lr, ~bottom) =>
  #BorderWidth(CssBorderWidth.value3(~top, ~lr, ~bottom));
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  #BorderWidth(CssBorderWidth.value4(~top, ~right, ~bottom, ~left));
let borderWidthUnion = v =>
  #BorderWidth(v);
let borderWidthString = v => 
  #BorderWidth(CssBorderWidth.string(v));

let borderTopWidth = v => 
  #BorderTopWidth(CssBorderTopWidth.value(v));
let borderTopWidthUnion = v =>
  #BorderTopWidth(v);
let borderTopWidthString = v => 
  #BorderTopWidth(CssBorderTopWidth.string(v));

let borderRightWidth = v => 
  #BorderRightWidth(CssBorderRightWidth.value(v));
let borderRightWidthUnion = v =>
  #BorderRightWidth(v);
let borderRightWidthString = v => 
  #BorderRightWidth(CssBorderRightWidth.string(v));

let borderBottomWidth = v => 
  #BorderBottomWidth(CssBorderBottomWidth.value(v));
let borderBottomWidthUnion = v =>
  #BorderBottomWidth(v);
let borderBottomWidthString = v => 
  #BorderBottomWidth(CssBorderBottomWidth.string(v));

let borderLeftWidth = v => 
  #BorderLeftWidth(CssBorderLeftWidth.value(v));
let borderLeftWidthUnion = v =>
  #BorderLeftWidth(v);
let borderLeftWidthString = v => 
  #BorderLeftWidth(CssBorderLeftWidth.string(v));

let background = (
  ~color=?,
  ~position=?,
  ~size=?,
  ~repeat=?,
  ~attachment=?,
  ~origin=?,
  ~clip=?,
  imageOrColor
) => 
  #Background(CssBackground.value(
    ~color=?color,
    ~position=?position,
    ~size=?size,
    ~repeat=?repeat,
    ~attachment=?attachment,
    ~origin=?origin,
    ~clip=?clip,
    imageOrColor
  ));
let background2 = (l1, l2) => 
  #Background(CssBackground.value2(l1, l2));
let background3 = (l1, l2, l3) => 
  #Background(CssBackground.value3(l1, l2, l3));
let background4 = (l1, l2, l3, l4) => 
  #Background(CssBackground.value4(l1, l2, l3, l4));
let backgroundUnion = v =>
  #Background(v);
let backgroundString = v => 
  #Background(CssBackground.string(v));

let backgroundAttachment = v => 
  #BackgroundAttachment(CssBackgroundAttachment.value(v));
let backgroundAttachment2 = (v1, v2) =>
  #BackgroundAttachment(CssBackgroundAttachment.value2(v1, v2));
let backgroundAttachment3 = (v1, v2, v3) =>
  #BackgroundAttachment(CssBackgroundAttachment.value3(v1, v2, v3));
let backgroundAttachment4 = (v1, v2, v3, v4) =>
  #BackgroundAttachment(CssBackgroundAttachment.value4(v1, v2, v3, v4));
let backgroundAttachmentUnion = v =>
  #BackgroundAttachment(v);
let backgroundAttachmentString = v => 
  #BackgroundAttachment(CssBackgroundAttachment.string(v));

let backgroundColor = v =>
  #BackgroundColor(CssBackgroundColor.value(v));
let backgroundColorUnion = v =>
  #BackgroundColor(v);
let backgroundColorString = v =>
  #BackgroundColor(CssBackgroundColor.string(v));

let backgroundImage = v =>
  #BackgroundImage(CssBackgroundImage.value(v));
let backgroundImage2 = (v1, v2) =>
  #BackgroundImage(CssBackgroundImage.value2(v1, v2));
let backgroundImage3 = (v1, v2, v3) =>
  #BackgroundImage(CssBackgroundImage.value3(v1, v2, v3));
let backgroundImage4 = (v1, v2, v3, v4) =>
  #BackgroundImage(CssBackgroundImage.value4(v1, v2, v3, v4));
let backgroundImageUnion = v =>
  #BackgroundImage(v);
let backgroundImageString = v =>
  #BackgroundImage(CssBackgroundImage.string(v));

let backgroundPosition = v =>
  #BackgroundPosition(CssBackgroundPosition.value(v));
let backgroundPosition2 = (v1, v2) =>
  #BackgroundPosition(CssBackgroundPosition.value2(v1, v2));
let backgroundPosition3 = (v1, v2, v3) =>
  #BackgroundPosition(CssBackgroundPosition.value3(v1, v2, v3));
let backgroundPosition4 = (v1, v2, v3, v4) =>
  #BackgroundPosition(CssBackgroundPosition.value4(v1, v2, v3, v4));
let backgroundPositionUnion = v =>
  #BackgroundPosition(v);
let backgroundPositionString = v =>
  #BackgroundPosition(CssBackgroundPosition.string(v));

let backgroundStyle = v =>
  #BackgroundStyle(CssBackgroundStyle.value(v));
let backgroundStyle2 = (v1, v2) =>
  #BackgroundStyle(CssBackgroundStyle.value2(v1, v2));
let backgroundStyle3 = (v1, v2, v3) =>
  #BackgroundStyle(CssBackgroundStyle.value3(v1, v2, v3));
let backgroundStyle4 = (v1, v2, v3, v4) =>
  #BackgroundStyle(CssBackgroundStyle.value4(v1, v2, v3, v4));
let backgroundStyleUnion = v =>
  #BackgroundStyle(v);
let backgroundStyleString = v =>
  #BackgroundStyle(CssBackgroundStyle.string(v));

let margin = v => 
  #Margin(CssMargin.value(v));
let margin2 = (~tb, ~lr) =>
  #Margin(CssMargin.value2(~tb, ~lr));
let margin3 = (~top, ~lr, ~bottom) =>
  #Margin(CssMargin.value3(~top, ~lr, ~bottom));
let margin4 = (~top, ~right, ~bottom, ~left) =>
  #Margin(CssMargin.value4(~top, ~right, ~bottom, ~left));
let marginUnion = v =>
  #Margin(v);
let marginString = v =>
  #Margin(CssMargin.string(v));
let marginNumber = v =>
  #Margin(CssMargin.number(v));

let marginTop = v =>
  #MarginTop(CssMarginTop.value(v));
let marginTopUnion = v =>
  #MarginTop(v);
let marginTopString = v =>
  #MarginTop(CssMarginTop.string(v));
let marginTopNumber = v =>
  #MarginTop(CssMarginTop.number(v));

let marginRight = v =>
  #MarginRight(CssMarginRight.value(v));
let marginRightUnion = v =>
  #MarginRight(v);
let marginRightString = v =>
  #MarginRight(CssMarginRight.string(v));
let marginRightNumber = v =>
  #MarginRight(CssMarginRight.number(v));

let marginBottom = v =>
  #MarginBottom(CssMarginBottom.value(v));
let marginBottomUnion = v =>
  #MarginBottom(v);
let marginBottomString = v =>
  #MarginBottom(CssMarginBottom.string(v));
let marginBottomNumber = v =>
  #MarginBottom(CssMarginBottom.number(v));

let marginLeft = v =>
  #MarginLeft(CssMarginLeft.value(v));
let marginLeftUnion = v =>
  #MarginLeft(v);
let marginLeftString = v =>
  #MarginLeft(CssMarginLeft.string(v));
let marginLeftNumber = v =>
  #MarginLeft(CssMarginLeft.number(v));

let padding = v => 
  #Padding(CssPadding.value(v));
let padding2 = (~tb, ~lr) =>
  #Padding(CssPadding.value2(~tb, ~lr));
let padding3 = (~top, ~lr, ~bottom) =>
  #Padding(CssPadding.value3(~top, ~lr, ~bottom));
let padding4 = (~top, ~right, ~bottom, ~left) =>
  #Padding(CssPadding.value4(~top, ~right, ~bottom, ~left));
let paddingUnion = v =>
  #Padding(v);
let paddingString = v =>
  #Padding(CssPadding.string(v));
let paddingNumber = v =>
  #Padding(CssPadding.number(v));

let paddingTop = v =>
  #PaddingTop(CssPaddingTop.value(v));
let paddingTopUnion = v =>
  #PaddingTop(v);
let paddingTopString = v =>
  #PaddingTop(CssPaddingTop.string(v));
let paddingTopNumber = v =>
  #PaddingTop(CssPaddingTop.number(v));

let paddingRight = v =>
  #PaddingRight(CssPaddingRight.value(v));
let paddingRightUnion = v =>
  #PaddingRight(v);
let paddingRightString = v =>
  #PaddingRight(CssPaddingRight.string(v));
let paddingRightNumber = v =>
  #PaddingRight(CssPaddingRight.number(v));

let paddingBottom = v =>
  #PaddingBottom(CssPaddingBottom.value(v));
let paddingBottomUnion = v =>
  #PaddingBottom(v);
let paddingBottomString = v =>
  #PaddingBottom(CssPaddingBottom.string(v));
let paddingBottomNumber = v =>
  #PaddingBottom(CssPaddingBottom.number(v));

let paddingLeft = v =>
  #PaddingLeft(CssPaddingLeft.value(v));
let paddingLeftUnion = v =>
  #PaddingLeft(v);
let paddingLeftString = v =>
  #PaddingLeft(CssPaddingLeft.string(v));
let paddingLeftNumber = v =>
  #PaddingLeft(CssPaddingLeft.number(v));

let clear = v =>
  #Clear(CssClear.value(v));

let color = v =>
  #Color(CssColor.value(v));
let colorUnion = v =>
  #Color(v);
let colorString = v =>
  #Color(CssColor.string(v));

let cursor = v =>
  #Cursor(CssCursor.value(v));
let cursor1 = (i, k) =>
  #Cursor(CssCursor.value1(i, k));
let cursor2 = (i1, i2, k) =>
  #Cursor(CssCursor.value2(i1, i2, k));
let cursor3 = (i1, i2, i3, k) =>
  #Cursor(CssCursor.value3(i1, i2, i3, k));
let cursor4 = (i1, i2, i3, i4, k) =>
  #Cursor(CssCursor.value4(i1, i2, i3, i4, k));
let cursorUnion = v =>
  #Cursor(v);
let cursorString = v =>
  #Cursor(CssCursor.string(v));

let fontWeight = v =>
  #FontWeight(CssFontWeight.value(v));
let fontWeightUnion = v =>
  #FontWeight(v);
let fontWeightString = v =>
  #FontWeight(CssFontWeight.string(v));
let fontWeightNumber = v =>
  #FontWeight(CssFontWeight.number(v));

let fontFamily = v =>
  #FontFamily(CssFontFamily.value(v));
let fontFamily2 = (v1, v2) =>
  #FontFamily(CssFontFamily.value2(v1, v2));
let fontFamily3 = (v1, v2, v3) =>
  #FontFamily(CssFontFamily.value3(v1, v2, v3));
let fontFamily4 = (v1, v2, v3, v4) =>
  #FontFamily(CssFontFamily.value4(v1, v2, v3, v4));
let fontFamilyUnion = v =>
  #FontFamily(v);
let fontFamilyString = v =>
  #FontFamily(CssFontFamily.string(v));