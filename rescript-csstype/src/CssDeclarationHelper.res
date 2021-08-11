let property = (name, value) => 
  #Property(name, CssPropertyValue.string(value));
let propertyNumber = (name, value) => 
  #Property(name, CssPropertyValue.number(value));
let propertyInteger = (name, value) => 
  #Property(name, CssPropertyValue.integer(value));

let border = (~width=?, ~color=?, style) => 
  #Border(CssPropertyValue.border(~width=?width, ~color=?color, style));
let borderString = v => 
  #Border(CssPropertyValue.borderString(v));

let borderTop = (~width=?, ~color=?, style) => 
  #BorderTop(CssPropertyValue.border(~width=?width, ~color=?color, style));
let borderTopString = v => 
  #BorderTop(CssPropertyValue.borderString(v));

let borderLeft = (~width=?, ~color=?, style) => 
  #BorderLeft(CssPropertyValue.border(~width=?width, ~color=?color, style));
let borderLeftString = v => 
  #BorderLeft(CssPropertyValue.borderString(v));

let borderRight = (~width=?, ~color=?, style) => 
  #BorderRight(CssPropertyValue.border(~width=?width, ~color=?color, style));
let borderRightString = v => 
  #BorderRight(CssPropertyValue.borderString(v));

let borderBottom = (~width=?, ~color=?, style) => 
  #BorderBottom(CssPropertyValue.border(~width=?width, ~color=?color, style));
let borderBottomString = v => 
  #BorderBottom(CssPropertyValue.borderString(v));

let borderColor = v => 
  #BorderColor(CssPropertyValue.borderColor(v));
let borderColor2 = (~tb, ~lr) => 
  #BorderColor(CssPropertyValue.borderColor2(~tb, ~lr));
let borderColor3 = (~top, ~lr, ~bottom) =>
  #BorderColor(CssPropertyValue.borderColor3(~top, ~lr, ~bottom));
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  #BorderColor(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left));
let borderColorString = v => 
  #BorderColor(CssPropertyValue.borderColorString(v));

let borderTopColor = v => 
  #BorderTopColor(CssPropertyValue.borderTopColor(v));
let borderTopColorString = v => 
  #BorderTopColor(CssPropertyValue.borderTopColorString(v));

let borderRightColor = v => 
  #BorderRightColor(CssPropertyValue.borderRightColor(v));
let borderRightColorString = v => 
  #BorderRightColor(CssPropertyValue.borderRightColorString(v));

let borderBottomColor = v => 
  #BorderBottomColor(CssPropertyValue.borderBottomColor(v));
let borderBottomColorString = v => 
  #BorderBottomColor(CssPropertyValue.borderBottomColorString(v));

let borderLeftColor = v => 
  #BorderLeftColor(CssPropertyValue.borderLeftColor(v));
let borderLeftColorString = v => 
  #BorderLeftColor(CssPropertyValue.borderLeftColorString(v));

let borderStyle = v => 
  #BorderStyle(CssPropertyValue.borderStyle(v));
let borderStyle2 = (~tb, ~lr) => 
  #BorderStyle(CssPropertyValue.borderStyle2(~tb, ~lr));
let borderStyle3 = (~top, ~lr, ~bottom) =>
  #BorderStyle(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom));
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  #BorderStyle(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left));
let borderStyleString = v => 
  #BorderStyle(CssPropertyValue.borderStyleString(v));

let borderTopStyle = v => 
  #BorderTopStyle(CssPropertyValue.borderTopStyle(v));
let borderTopStyleString = v => 
  #BorderTopStyle(CssPropertyValue.borderTopStyleString(v));

let borderRightStyle = v => 
  #BorderRightStyle(CssPropertyValue.borderRightStyle(v));
let borderRightStyleString = v => 
  #BorderRightStyle(CssPropertyValue.borderRightStyleString(v));

let borderBottomStyle = v => 
  #BorderBottomStyle(CssPropertyValue.borderBottomStyle(v));
let borderBottomStyleString = v =>
  #BorderBottomStyle(CssPropertyValue.borderBottomStyleString(v));

let borderLeftStyle = v => 
  #BorderLeftStyle(CssPropertyValue.borderLeftStyle(v));
let borderLeftStyleString = v => 
  #BorderLeftStyle(CssPropertyValue.borderLeftStyleString(v));

let borderWidth = v => 
  #BorderWidth(CssPropertyValue.borderWidth(v));
let borderWidth2 = (~tb, ~lr) => 
  #BorderWidth(CssPropertyValue.borderWidth2(~tb, ~lr));
let borderWidth3 = (~top, ~lr, ~bottom) =>
  #BorderWidth(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom));
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  #BorderWidth(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left));
let borderWidthString = v => 
  #BorderWidth(CssPropertyValue.borderWidthString(v));

let borderTopWidth = v => 
  #BorderTopWidth(CssPropertyValue.borderTopWidth(v));
let borderTopWidthString = v => 
  #BorderTopWidth(CssPropertyValue.borderTopWidthString(v));

let borderRightWidth = v => 
  #BorderRightWidth(CssPropertyValue.borderRightWidth(v));
let borderRightWidthString = v => 
  #BorderRightWidth(CssPropertyValue.borderRightWidthString(v));

let borderBottomWidth = v => 
  #BorderBottomWidth(CssPropertyValue.borderBottomWidth(v));
let borderBottomWidthString = v => 
  #BorderBottomWidth(CssPropertyValue.borderBottomWidthString(v));

let borderLeftWidth = v => 
  #BorderLeftWidth(CssPropertyValue.borderLeftWidth(v));
let borderLeftWidthString = v => 
  #BorderLeftWidth(CssPropertyValue.borderLeftWidthString(v));

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
  #Background(CssPropertyValue.background(
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
  #Background(CssPropertyValue.background2(l1, l2));
let background3 = (l1, l2, l3) => 
  #Background(CssPropertyValue.background3(l1, l2, l3));
let background4 = (l1, l2, l3, l4) => 
  #Background(CssPropertyValue.background4(l1, l2, l3, l4));
let backgroundString = v => 
  #Background(CssPropertyValue.backgroundString(v));

let backgroundAttachment = v => 
  #BackgroundAttachment(CssPropertyValue.backgroundAttachment(v));
let backgroundAttachment2 = (v1, v2) =>
  #BackgroundAttachment(CssPropertyValue.backgroundAttachment2(v1, v2));
let backgroundAttachment3 = (v1, v2, v3) =>
  #BackgroundAttachment(CssPropertyValue.backgroundAttachment3(v1, v2, v3));
let backgroundAttachment4 = (v1, v2, v3, v4) =>
  #BackgroundAttachment(CssPropertyValue.backgroundAttachment4(v1, v2, v3, v4));
let backgroundAttachmentString = v => 
  #BackgroundAttachment(CssPropertyValue.backgroundAttachmentString(v));

let backgroundColor = v =>
  #BackgroundColor(CssPropertyValue.backgroundColor(v));
let backgroundColorString = v =>
  #BackgroundColor(CssPropertyValue.backgroundColorString(v));

let backgroundImage = v =>
  #BackgroundImage(CssPropertyValue.backgroundImage(v));
let backgroundImage2 = (v1, v2) =>
  #BackgroundImage(CssPropertyValue.backgroundImage2(v1, v2));
let backgroundImage3 = (v1, v2, v3) =>
  #BackgroundImage(CssPropertyValue.backgroundImage3(v1, v2, v3));
let backgroundImage4 = (v1, v2, v3, v4) =>
  #BackgroundImage(CssPropertyValue.backgroundImage4(v1, v2, v3, v4));
let backgroundImageString = v =>
  #BackgroundImage(CssPropertyValue.backgroundImageString(v));

let backgroundPosition = v =>
  #BackgroundPosition(CssPropertyValue.backgroundPosition(v));
let backgroundPosition2 = (v1, v2) =>
  #BackgroundPosition(CssPropertyValue.backgroundPosition2(v1, v2));
let backgroundPosition3 = (v1, v2, v3) =>
  #BackgroundPosition(CssPropertyValue.backgroundPosition3(v1, v2, v3));
let backgroundPosition4 = (v1, v2, v3, v4) =>
  #BackgroundPosition(CssPropertyValue.backgroundPosition4(v1, v2, v3, v4));
let backgroundPositionString = v =>
  #BackgroundPosition(CssPropertyValue.backgroundPositionString(v));

let backgroundStyle = v =>
  #BackgroundStyle(CssPropertyValue.backgroundStyle(v));
let backgroundStyle2 = (v1, v2) =>
  #BackgroundStyle(CssPropertyValue.backgroundStyle2(v1, v2));
let backgroundStyle3 = (v1, v2, v3) =>
  #BackgroundStyle(CssPropertyValue.backgroundStyle3(v1, v2, v3));
let backgroundStyle4 = (v1, v2, v3, v4) =>
  #BackgroundStyle(CssPropertyValue.backgroundStyle4(v1, v2, v3, v4));
let backgroundStyleString = v =>
  #BackgroundStyle(CssPropertyValue.backgroundStyleString(v));

let margin = v => 
  #Margin(CssPropertyValue.margin(v));
let margin2 = (~tb, ~lr) =>
  #Margin(CssPropertyValue.margin2(~tb, ~lr));
let margin3 = (~top, ~lr, ~bottom) =>
  #Margin(CssPropertyValue.margin3(~top, ~lr, ~bottom));
let margin4 = (~top, ~right, ~bottom, ~left) =>
  #Margin(CssPropertyValue.margin4(~top, ~right, ~bottom, ~left));
let marginString = v =>
  #Margin(CssPropertyValue.marginString(v));
let marginNumber = v =>
  #Margin(CssPropertyValue.marginNumber(v));

let marginTop = v =>
  #MarginTop(CssPropertyValue.marginTop(v));
let marginTopString = v =>
  #MarginTop(CssPropertyValue.marginTopString(v));
let marginTopNumber = v =>
  #MarginTop(CssPropertyValue.marginTopNumber(v));

let marginRight = v =>
  #MarginRight(CssPropertyValue.marginRight(v));
let marginRightString = v =>
  #MarginRight(CssPropertyValue.marginRightString(v));
let marginRightNumber = v =>
  #MarginRight(CssPropertyValue.marginRightNumber(v));

let marginBottom = v =>
  #MarginBottom(CssPropertyValue.marginBottom(v));
let marginBottomString = v =>
  #MarginBottom(CssPropertyValue.marginBottomString(v));
let marginBottomNumber = v =>
  #MarginBottom(CssPropertyValue.marginBottomNumber(v));

let marginLeft = v =>
  #MarginLeft(CssPropertyValue.marginLeft(v));
let marginLeftString = v =>
  #MarginLeft(CssPropertyValue.marginLeftString(v));
let marginLeftNumber = v =>
  #MarginLeft(CssPropertyValue.marginLeftNumber(v));

let padding = v => 
  #Padding(CssPropertyValue.padding(v));
let padding2 = (~tb, ~lr) =>
  #Padding(CssPropertyValue.padding2(~tb, ~lr));
let padding3 = (~top, ~lr, ~bottom) =>
  #Padding(CssPropertyValue.padding3(~top, ~lr, ~bottom));
let padding4 = (~top, ~right, ~bottom, ~left) =>
  #Padding(CssPropertyValue.padding4(~top, ~right, ~bottom, ~left));
let paddingString = v =>
  #Padding(CssPropertyValue.paddingString(v));
let paddingNumber = v =>
  #Padding(CssPropertyValue.paddingNumber(v));

let paddingTop = v =>
  #PaddingTop(CssPropertyValue.paddingTop(v));
let paddingTopString = v =>
  #PaddingTop(CssPropertyValue.paddingTopString(v));
let paddingTopNumber = v =>
  #PaddingTop(CssPropertyValue.paddingTopNumber(v));

let paddingRight = v =>
  #PaddingRight(CssPropertyValue.paddingRight(v));
let paddingRightString = v =>
  #PaddingRight(CssPropertyValue.paddingRightString(v));
let paddingRightNumber = v =>
  #PaddingRight(CssPropertyValue.paddingRightNumber(v));

let paddingBottom = v =>
  #PaddingBottom(CssPropertyValue.paddingBottom(v));
let paddingBottomString = v =>
  #PaddingBottom(CssPropertyValue.paddingBottomString(v));
let paddingBottomNumber = v =>
  #PaddingBottom(CssPropertyValue.paddingBottomNumber(v));

let paddingLeft = v =>
  #PaddingLeft(CssPropertyValue.paddingLeft(v));
let paddingLeftString = v =>
  #PaddingLeft(CssPropertyValue.paddingLeftString(v));
let paddingLeftNumber = v =>
  #PaddingLeft(CssPropertyValue.paddingLeftNumber(v));

let clear = v =>
  #Clear(CssPropertyValue.clear(v));

let color = v =>
  #Color(CssPropertyValue.color(v));
let colorString = v =>
  #Color(CssPropertyValue.colorString(v));

let cursor = v =>
  #Cursor(CssPropertyValue.cursor(v));
let cursor1 = (i, k) =>
  #Cursor(CssPropertyValue.cursor1(i, k));
let cursor2 = (i1, i2, k) =>
  #Cursor(CssPropertyValue.cursor2(i1, i2, k));
let cursor3 = (i1, i2, i3, k) =>
  #Cursor(CssPropertyValue.cursor3(i1, i2, i3, k));
let cursor4 = (i1, i2, i3, i4, k) =>
  #Cursor(CssPropertyValue.cursor4(i1, i2, i3, i4, k));
let cursorString = v =>
  #Cursor(CssPropertyValue.cursorString(v));

let fontWeight = v =>
  #FontWeight(CssPropertyValue.fontWeight(v));
let fontWeightString = v =>
  #FontWeight(CssPropertyValue.fontWeightString(v));
let fontWeightNumber = v =>
  #FontWeight(CssPropertyValue.fontWeightNumber(v));