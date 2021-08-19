@unboxed
type rec boxValue =
  | BoxValue('a): boxValue;

type declaration = [ | #Declaration(string, boxValue) ];
type border = [ | #Border(CssBorder.t) ];
type borderTop = [ | #BorderTop(CssBorder.t) ];
type borderRight = [ | #BorderRight(CssBorder.t) ];
type borderBottom = [ | #BorderBottom(CssBorder.t) ];
type borderLeft = [ | #BorderLeft(CssBorder.t) ];
type borderStyle = [ | #BorderStyle(CssBorderStyle.t) ];
type borderTopStyle = [ | #BorderTopStyle(CssBorderTopStyle.t) ];
type borderRightStyle = [ | #BorderRightStyle(CssBorderRightStyle.t) ];
type borderBottomStyle = [ | #BorderBottomStyle(CssBorderBottomStyle.t) ];
type borderLeftStyle = [ | #BorderLeftStyle(CssBorderLeftStyle.t) ];
type borderWidth = [ | #BorderWidth(CssBorderWidth.t) ];
type borderTopWidth = [ | #BorderTopWidth(CssBorderTopWidth.t) ];
type borderRightWidth = [ | #BorderRightWidth(CssBorderRightWidth.t) ];
type borderBottomWidth = [ | #BorderBottomWidth(CssBorderBottomWidth.t) ];
type borderLeftWidth = [ | #BorderLeftWidth(CssBorderLeftWidth.t) ];
type borderColor = [ | #BorderColor(CssBorderColor.t) ];
type borderTopColor = [ | #BorderTopColor(CssBorderTopColor.t) ];
type borderRightColor = [ | #BorderRightColor(CssBorderRightColor.t) ];
type borderBottomColor = [ | #BorderBottomColor(CssBorderBottomColor.t) ];
type borderLeftColor = [ | #BorderLeftColor(CssBorderLeftColor.t) ];
type background = [ | #Background(CssBackground.t) ];
type backgroundAttachment = [ | #BackgroundAttachment(CssBackgroundAttachment.t) ];
type backgroundColor = [ | #BackgroundColor(CssBackgroundColor.t) ];
type backgroundImage = [ | #BackgroundImage(CssBackgroundImage.t) ];
type backgroundPosition = [ | #BackgroundPosition(CssBackgroundPosition.t) ];
type backgroundStyle = [ | #BackgroundStyle(CssBackgroundStyle.t) ];
type margin = [ | #Margin(CssMargin.t) ];
type marginTop = [ | #MarginTop(CssMarginTop.t) ];
type marginRight = [ | #MarginRight(CssMarginRight.t) ];
type marginBottom = [ | #MarginBottom(CssMarginBottom.t) ];
type marginLeft = [ | #MarginLeft(CssMarginLeft.t) ];
type padding = [ | #Padding(CssPadding.t) ];
type paddingTop = [ | #PaddingTop(CssPaddingTop.t) ];
type paddingBottom = [ | #PaddingBottom(CssPaddingBottom.t) ];
type paddingRight = [ | #PaddingRight(CssPaddingRight.t) ];
type paddingLeft = [ | #PaddingLeft(CssPaddingLeft.t) ];
type color = [ | #Color(CssColor.t) ];
type clear = [ | #Clear(CssClear.t) ];
type cursor = [ | #Cursor(CssCursor.t) ];
type fontWeight = [ | #FontWeight(CssFontWeight.t) ];
type fontFamily = [ | #FontFamily(CssFontFamily.t) ];

type t = [
  | declaration
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
  | fontWeight
  | fontFamily
];