type prop= [ | #Property(string, CssPropertyValue.t_synthetic) ];
type border = [ | #Border(CssPropertyValue.t_border) ];
type borderTop = [ | #BorderTop(CssPropertyValue.t_border) ];
type borderRight = [ | #BorderRight(CssPropertyValue.t_border) ];
type borderBottom = [ | #BorderBottom(CssPropertyValue.t_border) ];
type borderLeft = [ | #BorderLeft(CssPropertyValue.t_border) ];
type borderStyle = [ | #BorderStyle(CssPropertyValue.t_borderStyle) ];
type borderTopStyle = [ | #BorderTopStyle(CssPropertyValue.t_borderTopStyle) ];
type borderRightStyle = [ | #BorderRightStyle(CssPropertyValue.t_borderRightStyle) ];
type borderBottomStyle = [ | #BorderBottomStyle(CssPropertyValue.t_borderBottomStyle) ];
type borderLeftStyle = [ | #BorderLeftStyle(CssPropertyValue.t_borderLeftStyle) ];
type borderWidth = [ | #BorderWidth(CssPropertyValue.t_borderWidth) ];
type borderTopWidth = [ | #BorderTopWidth(CssPropertyValue.t_borderTopWidth) ];
type borderRightWidth = [ | #BorderRightWidth(CssPropertyValue.t_borderRightWidth) ];
type borderBottomWidth = [ | #BorderBottomWidth(CssPropertyValue.t_borderBottomWidth) ];
type borderLeftWidth = [ | #BorderLeftWidth(CssPropertyValue.t_borderLeftWidth) ];
type borderColor = [ | #BorderColor(CssPropertyValue.t_borderColor) ];
type borderTopColor = [ | #BorderTopColor(CssPropertyValue.t_borderTopColor) ];
type borderRightColor = [ | #BorderRightColor(CssPropertyValue.t_borderRightColor) ];
type borderBottomColor = [ | #BorderBottomColor(CssPropertyValue.t_borderBottomColor) ];
type borderLeftColor = [ | #BorderLeftColor(CssPropertyValue.t_borderLeftColor) ];
type background = [ | #Background(CssPropertyValue.t_background) ];
type backgroundAttachment = [ | #BackgroundAttachment(CssPropertyValue.t_backgroundAttachment) ];
type backgroundColor = [ | #BackgroundColor(CssPropertyValue.t_backgroundColor) ];
type backgroundImage = [ | #BackgroundImage(CssPropertyValue.t_backgroundImage) ];
type backgroundPosition = [ | #BackgroundPosition(CssPropertyValue.t_backgroundPosition) ];
type backgroundStyle = [ | #BackgroundStyle(CssPropertyValue.t_backgroundStyle) ];
type margin = [ | #Margin(CssPropertyValue.t_margin) ];
type marginTop = [ | #MarginTop(CssPropertyValue.t_marginTop) ];
type marginRight = [ | #MarginRight(CssPropertyValue.t_marginRight) ];
type marginBottom = [ | #MarginBottom(CssPropertyValue.t_marginBottom) ];
type marginLeft = [ | #MarginLeft(CssPropertyValue.t_marginLeft) ];
type padding = [ | #Padding(CssPropertyValue.t_padding) ];
type paddingTop = [ | #PaddingTop(CssPropertyValue.t_paddingTop) ];
type paddingBottom = [ | #PaddingBottom(CssPropertyValue.t_paddingBottom) ];
type paddingRight = [ | #PaddingRight(CssPropertyValue.t_paddingRight) ];
type paddingLeft = [ | #PaddingLeft(CssPropertyValue.t_paddingLeft) ];
type color = [ | #Color(CssPropertyValue.t_color) ];
type clear = [ | #Clear(CssPropertyValue.t_clear) ];
type cursor = [ | #Cursor(CssPropertyValue.t_cursor) ];

type property = [
  | prop
  | border
  | borderTop
  | borderRight
  | borderBottom
  | borderLeft
  | borderStyle
  | borderTopStyle
  | borderRightStyle
  | borderBottomStyle
  | borderLeftStyle
  | borderWidth
  | borderTopWidth
  | borderRightWidth
  | borderBottomWidth
  | borderLeftWidth
  | borderColor
  | borderTopColor
  | borderRightColor
  | borderBottomColor
  | borderLeftColor
  | background
  | backgroundAttachment
  | backgroundColor
  | backgroundImage
  | backgroundPosition
  | backgroundStyle
  | margin
  | marginTop
  | marginRight
  | marginBottom
  | marginLeft
  | padding
  | paddingTop
  | paddingRight
  | paddingBottom
  | paddingLeft
  | color
  | clear
  | cursor
];