@unboxed
type rec propertyValue =
  | PropertyValue('a): propertyValue;

type property<'data> = [ | #PropertyFn(string, 'data => propertyValue) ];
type border<'data> = [ | #BorderFn('data => CssBorder.t) ];
type borderTop<'data> = [ | #BorderTopFn('data => CssBorder.t) ];
type borderRight<'data> = [ | #BorderRightFn('data => CssBorder.t) ];
type borderBottom<'data> = [ | #BorderBottomFn('data => CssBorder.t) ];
type borderLeft<'data> = [ | #BorderLeftFn('data => CssBorder.t) ];
type borderStyle<'data> = [ | #BorderStyleFn('data => CssBorderStyle.t) ];
type borderTopStyle<'data> = [ | #BorderTopStyleFn('data => CssBorderTopStyle.t) ];
type borderRightStyle<'data> = [ | #BorderRightStyleFn('data => CssBorderRightStyle.t) ];
type borderBottomStyle<'data> = [ | #BorderBottomStyleFn('data => CssBorderBottomStyle.t) ];
type borderLeftStyle<'data> = [ | #BorderLeftStyleFn('data => CssBorderLeftStyle.t) ];
type borderWidth<'data> = [ | #BorderWidthFn('data => CssBorderWidth.t) ];
type borderTopWidth<'data> = [ | #BorderTopWidthFn('data => CssBorderTopWidth.t) ];
type borderRightWidth<'data> = [ | #BorderRightWidthFn('data => CssBorderRightWidth.t) ];
type borderBottomWidth<'data> = [ | #BorderBottomWidthFn('data => CssBorderBottomWidth.t) ];
type borderLeftWidth<'data> = [ | #BorderLeftWidthFn('data => CssBorderLeftWidth.t) ];
type borderColor<'data> = [ | #BorderColorFn('data => CssBorderColor.t) ];
type borderTopColor<'data> = [ | #BorderTopColorFn('data => CssBorderTopColor.t) ];
type borderRightColor<'data> = [ | #BorderRightColorFn('data => CssBorderRightColor.t) ];
type borderBottomColor<'data> = [ | #BorderBottomColorFn('data => CssBorderBottomColor.t) ];
type borderLeftColor<'data> = [ | #BorderLeftColorFn('data => CssBorderLeftColor.t) ];
type background<'data> = [ | #BackgroundFn('data => CssBackground.t) ];
type backgroundAttachment<'data> = [ | #BackgroundAttachmentFn('data => CssBackgroundAttachment.t) ];
type backgroundColor<'data> = [ | #BackgroundColorFn('data => CssBackgroundColor.t) ];
type backgroundImage<'data> = [ | #BackgroundImageFn('data => CssBackgroundImage.t) ];
type backgroundPosition<'data> = [ | #BackgroundPositionFn('data => CssBackgroundPosition.t) ];
type backgroundStyle<'data> = [ | #BackgroundStyleFn('data => CssBackgroundStyle.t) ];
type margin<'data> = [ | #MarginFn('data => CssMargin.t) ];
type marginTop<'data> = [ | #MarginTopFn('data => CssMarginTop.t) ];
type marginRight<'data> = [ | #MarginRightFn('data => CssMarginRight.t) ];
type marginBottom<'data> = [ | #MarginBottomFn('data => CssMarginBottom.t) ];
type marginLeft<'data> = [ | #MarginLeftFn('data => CssMarginLeft.t) ];
type padding<'data> = [ | #PaddingFn('data => CssPadding.t) ];
type paddingTop<'data> = [ | #PaddingTopFn('data => CssPaddingTop.t) ];
type paddingBottom<'data> = [ | #PaddingBottomFn('data => CssPaddingBottom.t) ];
type paddingRight<'data> = [ | #PaddingRightFn('data => CssPaddingRight.t) ];
type paddingLeft<'data> = [ | #PaddingLeftFn('data => CssPaddingLeft.t) ];
type color<'data> = [ | #ColorFn('data => CssColor.t) ];
type clear<'data> = [ | #ClearFn('data => CssClear.t) ];
type cursor<'data> = [ | #CursorFn('data => CssCursor.t) ];
type fontWeight<'data> = [ | #FontWeightFn('data => CssFontWeight.t) ];
type fontFamily<'data> = [ | #FontFamilyFn('data => CssFontFamily.t) ];

type t<'data> = [
  | property<'data>
  | border<'data>
  | borderTop<'data>
  | borderRight<'data>
  | borderBottom<'data>
  | borderLeft<'data>
  | borderStyle<'data>
  | borderTopStyle<'data>
  | borderRightStyle<'data>
  | borderBottomStyle<'data>
  | borderLeftStyle<'data>
  | borderWidth<'data>
  | borderTopWidth<'data>
  | borderRightWidth<'data>
  | borderBottomWidth<'data>
  | borderLeftWidth<'data>
  | borderColor<'data>
  | borderTopColor<'data>
  | borderRightColor<'data>
  | borderBottomColor<'data>
  | borderLeftColor<'data>
  | background<'data>
  | backgroundAttachment<'data>
  | backgroundColor<'data>
  | backgroundImage<'data>
  | backgroundPosition<'data>
  | backgroundStyle<'data>
  | margin<'data>
  | marginTop<'data>
  | marginRight<'data>
  | marginBottom<'data>
  | marginLeft<'data>
  | padding<'data>
  | paddingTop<'data>
  | paddingRight<'data>
  | paddingBottom<'data>
  | paddingLeft<'data>
  | color<'data>
  | clear<'data>
  | cursor<'data>
  | fontWeight<'data>
  | fontFamily<'data>
];