@unboxed
type rec boxValue<'data> =
  | BoxValue('data => option<'a>): boxValue<'data>;

type property<'data> = [ | #PropertyFn(string, boxValue<'data>) ];
type border<'data> = [ | #BorderFn('data => option<CssBorder.t>) ];
type borderTop<'data> = [ | #BorderTopFn('data => option<CssBorder.t>) ];
type borderRight<'data> = [ | #BorderRightFn('data => option<CssBorder.t>) ];
type borderBottom<'data> = [ | #BorderBottomFn('data => option<CssBorder.t>) ];
type borderLeft<'data> = [ | #BorderLeftFn('data => option<CssBorder.t>) ];
type borderStyle<'data> = [ | #BorderStyleFn('data => option<CssBorderStyle.t>) ];
type borderTopStyle<'data> = [ | #BorderTopStyleFn('data => option<CssBorderTopStyle.t>) ];
type borderRightStyle<'data> = [ | #BorderRightStyleFn('data => option<CssBorderRightStyle.t>) ];
type borderBottomStyle<'data> = [ | #BorderBottomStyleFn('data => option<CssBorderBottomStyle.t>) ];
type borderLeftStyle<'data> = [ | #BorderLeftStyleFn('data => option<CssBorderLeftStyle.t>) ];
type borderWidth<'data> = [ | #BorderWidthFn('data => option<CssBorderWidth.t>) ];
type borderTopWidth<'data> = [ | #BorderTopWidthFn('data => option<CssBorderTopWidth.t>) ];
type borderRightWidth<'data> = [ | #BorderRightWidthFn('data => option<CssBorderRightWidth.t>) ];
type borderBottomWidth<'data> = [ | #BorderBottomWidthFn('data => option<CssBorderBottomWidth.t>) ];
type borderLeftWidth<'data> = [ | #BorderLeftWidthFn('data => option<CssBorderLeftWidth.t>) ];
type borderColor<'data> = [ | #BorderColorFn('data => option<CssBorderColor.t>) ];
type borderTopColor<'data> = [ | #BorderTopColorFn('data => option<CssBorderTopColor.t>) ];
type borderRightColor<'data> = [ | #BorderRightColorFn('data => option<CssBorderRightColor.t>) ];
type borderBottomColor<'data> = [ | #BorderBottomColorFn('data => option<CssBorderBottomColor.t>) ];
type borderLeftColor<'data> = [ | #BorderLeftColorFn('data => option<CssBorderLeftColor.t>) ];
type background<'data> = [ | #BackgroundFn('data => option<CssBackground.t>) ];
type backgroundAttachment<'data> = [ | #BackgroundAttachmentFn('data => option<CssBackgroundAttachment.t>) ];
type backgroundColor<'data> = [ | #BackgroundColorFn('data => option<CssBackgroundColor.t>) ];
type backgroundImage<'data> = [ | #BackgroundImageFn('data => option<CssBackgroundImage.t>) ];
type backgroundPosition<'data> = [ | #BackgroundPositionFn('data => option<CssBackgroundPosition.t>) ];
type backgroundStyle<'data> = [ | #BackgroundStyleFn('data => option<CssBackgroundStyle.t>) ];
type margin<'data> = [ | #MarginFn('data => option<CssMargin.t>) ];
type marginTop<'data> = [ | #MarginTopFn('data => option<CssMarginTop.t>) ];
type marginRight<'data> = [ | #MarginRightFn('data => option<CssMarginRight.t>) ];
type marginBottom<'data> = [ | #MarginBottomFn('data => option<CssMarginBottom.t>) ];
type marginLeft<'data> = [ | #MarginLeftFn('data => option<CssMarginLeft.t>) ];
type padding<'data> = [ | #PaddingFn('data => option<CssPadding.t>) ];
type paddingTop<'data> = [ | #PaddingTopFn('data => option<CssPaddingTop.t>) ];
type paddingBottom<'data> = [ | #PaddingBottomFn('data => option<CssPaddingBottom.t>) ];
type paddingRight<'data> = [ | #PaddingRightFn('data => option<CssPaddingRight.t>) ];
type paddingLeft<'data> = [ | #PaddingLeftFn('data => option<CssPaddingLeft.t>) ];
type color<'data> = [ | #ColorFn('data => option<CssColor.t>) ];
type clear<'data> = [ | #ClearFn('data => option<CssClear.t>) ];
type cursor<'data> = [ | #CursorFn('data => option<CssCursor.t>) ];
type fontWeight<'data> = [ | #FontWeightFn('data => option<CssFontWeight.t>) ];
type fontFamily<'data> = [ | #FontFamilyFn('data => option<CssFontFamily.t>) ];

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