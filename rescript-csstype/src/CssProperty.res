let property = (name, value) => (name, CssPropertyValue.Box(value));
let propertyString = (name, value) => (name, CssPropertyValue.Box(CssPropertyValue.string(value)));
let propertyNumber = (name, value) => (name, CssPropertyValue.Box(CssPropertyValue.number(value)));
let propertyInteger = (name, value) => (name, CssPropertyValue.Box(CssPropertyValue.integer(value)));

let border = (~width=?, ~color=?, style) => 
  ("border", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderString = v => 
  ("border", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

let borderTop = (~width=?, ~color=?, style) => 
  ("borderTop", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderTopString = v => 
  ("borderTop", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

let borderLeft = (~width=?, ~color=?, style) => 
  ("borderLeft", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderLeftString = v => 
  ("borderLeft", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

let borderRight = (~width=?, ~color=?, style) => 
  ("borderRight", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderRightString = v => 
  ("borderRight", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

let borderBottom = (~width=?, ~color=?, style) => 
  ("borderBottom", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderBottomString = v => 
  ("borderBottom", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

let borderColor = v => 
  ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor(v)));
let borderColor2 = (~tb, ~lr) => 
  ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderColor3 = (~top, ~lr, ~bottom) =>
  ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderColorString = v => 
  ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColorString(v)));

let borderTopColor = v => 
  ("borderTopColor", CssPropertyValue.Box(CssPropertyValue.borderTopColor(v)));
let borderTopColorString = v => 
  ("borderTopColor", CssPropertyValue.Box(CssPropertyValue.borderTopColorString(v)));

let borderRightColor = v => 
  ("borderRightColor", CssPropertyValue.Box(CssPropertyValue.borderRightColor(v)));
let borderRightColorString = v => 
  ("borderRightColor", CssPropertyValue.Box(CssPropertyValue.borderRightColorString(v)));

let borderBottomColor = v => 
  ("borderBottomColor", CssPropertyValue.Box(CssPropertyValue.borderBottomColor(v)));
let borderBottomColorString = v => 
  ("borderBottomColor", CssPropertyValue.Box(CssPropertyValue.borderBottomColorString(v)));

let borderLeftColor = v => 
  ("borderLeftColor", CssPropertyValue.Box(CssPropertyValue.borderLeftColor(v)));
let borderLeftColorString = v => 
  ("borderLeftColor", CssPropertyValue.Box(CssPropertyValue.borderLeftColorString(v)));

let borderStyle = v => 
  ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
let borderStyle2 = (~tb, ~lr) => ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle2(~tb, ~lr)));
let borderStyle3 = (~top, ~lr, ~bottom) =>
  ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom)));
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left)));
let borderStyleString = v => 
  ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyleString(v)));

let borderTopStyle = v => 
  ("borderTopStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
let borderTopStyleString = v => 
  ("borderTopStyle", CssPropertyValue.Box(CssPropertyValue.borderTopStyleString(v)));

let borderRightStyle = v => 
  ("borderRightStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
let borderRightStyleString = v => 
  ("borderRightStyle", CssPropertyValue.Box(CssPropertyValue.borderRightStyleString(v)));

let borderBottomStyle = v => 
  ("borderBottomStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
let borderBottomStyleString = v =>
  ("borderBottomStyle", CssPropertyValue.Box(CssPropertyValue.borderBottomStyleString(v)));

let borderLeftStyle = v => 
  ("borderLeftStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
let borderLeftStyleString = v => 
  ("borderLeftStyle", CssPropertyValue.Box(CssPropertyValue.borderLeftStyleString(v)));

let borderWidth = v => 
  ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth(v)));
let borderWidth2 = (~tb, ~lr) => 
  ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth2(~tb, ~lr)));
let borderWidth3 = (~top, ~lr, ~bottom) =>
  ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom)));
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left)));
let borderWidthString = v => 
  ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidthString(v)));

let borderTopWidth = v => 
  ("borderTopWidth", CssPropertyValue.Box(CssPropertyValue.borderTopWidth(v)));
let borderTopWidthString = v => 
  ("borderTopWidth", CssPropertyValue.Box(CssPropertyValue.borderTopWidthString(v)));

let borderRightWidth = v => 
  ("borderRightWidth", CssPropertyValue.Box(CssPropertyValue.borderRightWidth(v)));
let borderRightWidthString = v => 
  ("borderRightWidth", CssPropertyValue.Box(CssPropertyValue.borderRightWidthString(v)));

let borderBottomWidth = v => 
  ("borderBottomWidth", CssPropertyValue.Box(CssPropertyValue.borderBottomWidth(v)));
let borderBottomWidthString = v => 
  ("borderBottomWidth", CssPropertyValue.Box(CssPropertyValue.borderBottomWidthString(v)));

let borderLeftWidth = v => 
  ("borderLeftWidth", CssPropertyValue.Box(CssPropertyValue.borderLeftWidth(v)));
let borderLeftWidthString = v => 
  ("borderLeftWidth", CssPropertyValue.Box(CssPropertyValue.borderLeftWidthString(v)));

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
  (
    "background", 
    CssPropertyValue.Box(CssPropertyValue.background(
      ~color=?color,
      ~position=?position,
      ~size=?size,
      ~repeat=?repeat,
      ~attachment=?attachment,
      ~origin=?origin,
      ~clip=?clip,
      imageOrColor
    ))
  );
let background2 = (l1, l2) => 
  ("background", CssPropertyValue.Box(CssPropertyValue.background2(l1, l2)));
let background3 = (l1, l2, l3) => 
  ("background", CssPropertyValue.Box(CssPropertyValue.background3(l1, l2, l3)));
let background4 = (l1, l2, l3, l4) => 
  ("background", CssPropertyValue.Box(CssPropertyValue.background4(l1, l2, l3, l4)));
let backgroundString = v => 
  ("background", CssPropertyValue.Box(CssPropertyValue.backgroundString(v)));

let backgroundAttachment = v => 
  ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment(v)));
let backgroundAttachment2 = (v1, v2) =>
  ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment2(v1, v2)));
let backgroundAttachment3 = (v1, v2, v3) =>
  ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment3(v1, v2, v3)));
let backgroundAttachment4 = (v1, v2, v3, v4) =>
  ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment4(v1, v2, v3, v4)));
let backgroundAttachmentString = v => 
  ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachmentString(v)));

let backgroundColor = v =>
  ("backgroundColor", CssPropertyValue.Box(CssPropertyValue.backgroundColor(v)));
let backgroundColorString = v =>
  ("backgroundColor", CssPropertyValue.Box(CssPropertyValue.backgroundColorString(v)));

let backgroundImage = v =>
  ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage(v)));
let backgroundImage2 = (v1, v2) =>
  ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage2(v1, v2)));
let backgroundImage3 = (v1, v2, v3) =>
  ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage3(v1, v2, v3)));
let backgroundImage4 = (v1, v2, v3, v4) =>
  ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage4(v1, v2, v3, v4)));
let backgroundImageString = v =>
  ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImageString(v)));

let backgroundPosition = v =>
  ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition(v)));
let backgroundPosition2 = (v1, v2) =>
  ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition2(v1, v2)));
let backgroundPosition3 = (v1, v2, v3) =>
  ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition3(v1, v2, v3)));
let backgroundPosition4 = (v1, v2, v3, v4) =>
  ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition4(v1, v2, v3, v4)));
let backgroundPositionString = v =>
  ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPositionString(v)));

let backgroundStyle = v =>
  ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle(v)));
let backgroundStyle2 = (v1, v2) =>
  ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle2(v1, v2)));
let backgroundStyle3 = (v1, v2, v3) =>
  ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle3(v1, v2, v3)));
let backgroundStyle4 = (v1, v2, v3, v4) =>
  ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle4(v1, v2, v3, v4)));
let backgroundStyleString = v =>
  ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyleString(v)));

let margin = v => 
  ("margin", CssPropertyValue.Box(CssPropertyValue.margin(v)));
let margin2 = (~tb, ~lr) =>
  ("margin", CssPropertyValue.Box(CssPropertyValue.margin2(~tb, ~lr)));
let margin3 = (~top, ~lr, ~bottom) =>
  ("margin", CssPropertyValue.Box(CssPropertyValue.margin3(~top, ~lr, ~bottom)));
let margin4 = (~top, ~right, ~bottom, ~left) =>
  ("margin", CssPropertyValue.Box(CssPropertyValue.margin4(~top, ~right, ~bottom, ~left)));
let marginString = v =>
  ("margin", CssPropertyValue.Box(CssPropertyValue.marginString(v)));
let marginNumber = v =>
  ("margin", CssPropertyValue.Box(CssPropertyValue.marginNumber(v)));

let marginTop = v =>
  ("marginTop", CssPropertyValue.Box(CssPropertyValue.marginTop(v)));
let marginTopString = v =>
  ("marginTop", CssPropertyValue.Box(CssPropertyValue.marginTopString(v)));
let marginTopNumber = v =>
  ("marginTop", CssPropertyValue.Box(CssPropertyValue.marginTopNumber(v)));

let marginRight = v =>
  ("marginRight", CssPropertyValue.Box(CssPropertyValue.marginRight(v)));
let marginRightString = v =>
  ("marginRight", CssPropertyValue.Box(CssPropertyValue.marginRightString(v)));
let marginRightNumber = v =>
  ("marginRight", CssPropertyValue.Box(CssPropertyValue.marginRightNumber(v)));

let marginBottom = v =>
  ("marginBottom", CssPropertyValue.Box(CssPropertyValue.marginBottom(v)));
let marginBottomString = v =>
  ("marginBottom", CssPropertyValue.Box(CssPropertyValue.marginBottomString(v)));
let marginBottomNumber = v =>
  ("marginBottom", CssPropertyValue.Box(CssPropertyValue.marginBottomNumber(v)));

let marginLeft = v =>
  ("marginLeft", CssPropertyValue.Box(CssPropertyValue.marginLeft(v)));
let marginLeftString = v =>
  ("marginLeft", CssPropertyValue.Box(CssPropertyValue.marginLeftString(v)));
let marginLeftNumber = v =>
  ("marginLeft", CssPropertyValue.Box(CssPropertyValue.marginLeftNumber(v)));

let padding = v => 
  ("padding", CssPropertyValue.Box(CssPropertyValue.padding(v)));
let padding2 = (~tb, ~lr) =>
  ("padding", CssPropertyValue.Box(CssPropertyValue.padding2(~tb, ~lr)));
let padding3 = (~top, ~lr, ~bottom) =>
  ("padding", CssPropertyValue.Box(CssPropertyValue.padding3(~top, ~lr, ~bottom)));
let padding4 = (~top, ~right, ~bottom, ~left) =>
  ("padding", CssPropertyValue.Box(CssPropertyValue.padding4(~top, ~right, ~bottom, ~left)));
let paddingString = v =>
  ("padding", CssPropertyValue.Box(CssPropertyValue.paddingString(v)));
let paddingNumber = v =>
  ("padding", CssPropertyValue.Box(CssPropertyValue.paddingNumber(v)));

let paddingTop = v =>
  ("paddingTop", CssPropertyValue.Box(CssPropertyValue.paddingTop(v)));
let paddingTopString = v =>
  ("paddingTop", CssPropertyValue.Box(CssPropertyValue.paddingTopString(v)));
let paddingTopNumber = v =>
  ("paddingTop", CssPropertyValue.Box(CssPropertyValue.paddingTopNumber(v)));

let paddingRight = v =>
  ("paddingRight", CssPropertyValue.Box(CssPropertyValue.paddingRight(v)));
let paddingRightString = v =>
  ("paddingRight", CssPropertyValue.Box(CssPropertyValue.paddingRightString(v)));
let paddingRightNumber = v =>
  ("paddingRight", CssPropertyValue.Box(CssPropertyValue.paddingRightNumber(v)));

let paddingBottom = v =>
  ("paddingBottom", CssPropertyValue.Box(CssPropertyValue.paddingBottom(v)));
let paddingBottomString = v =>
  ("paddingBottom", CssPropertyValue.Box(CssPropertyValue.paddingBottomString(v)));
let paddingBottomNumber = v =>
  ("paddingBottom", CssPropertyValue.Box(CssPropertyValue.paddingBottomNumber(v)));

let paddingLeft = v =>
  ("paddingLeft", CssPropertyValue.Box(CssPropertyValue.paddingLeft(v)));
let paddingLeftString = v =>
  ("paddingLeft", CssPropertyValue.Box(CssPropertyValue.paddingLeftString(v)));
let paddingLeftNumber = v =>
  ("paddingLeft", CssPropertyValue.Box(CssPropertyValue.paddingLeftNumber(v)));

let clear = v =>
  ("clear", CssPropertyValue.Box(CssPropertyValue.clear(v)));

let color = v =>
  ("color", CssPropertyValue.Box(CssPropertyValue.color(v)));
let colorString = v =>
  ("color", CssPropertyValue.Box(CssPropertyValue.colorString(v)));

let cursor = v =>
  ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor(v)));
let cursor1 = (i, k) =>
  ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor1(i, k)));
let cursor2 = (i1, i2, k) =>
  ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor2(i1, i2, k)));
let cursor3 = (i1, i2, i3, k) =>
  ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor3(i1, i2, i3, k)));
let cursor4 = (i1, i2, i3, i4, k) =>
  ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor4(i1, i2, i3, i4, k)));
let cursorString = v =>
  ("cursor", CssPropertyValue.Box(CssPropertyValue.cursorString(v)));