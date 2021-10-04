open CssType;

type background<'return> = (
  ~color: color=?,
  ~position: position=?,
  ~size: bgSize=?,
  ~repeat: repeatStyle=?,
  ~attachment: attachment=?,
  ~origin: box=?,
  ~clip: box=?,
  [ | global | bgImage | color ]
) => 'return;
type background2<'return> = (
  bgLayer, 
  bgLayer,
) => 'return;
type background3<'return> = (
  bgLayer, 
  bgLayer, 
  bgLayer,
) => 'return;
type background4<'return> = (
  bgLayer, 
  bgLayer, 
  bgLayer, 
  bgLayer
) => 'return;

type backgroundAttachment<'return> = attachment_global => 
  'return;
type backgroundAttachment2<'return> = (
  attachment, 
  attachment,
) => 'return;
type backgroundAttachment3<'return> = (
  attachment, 
  attachment, 
  attachment,
) => 'return;
type backgroundAttachment4<'return> = (
  attachment, 
  attachment, 
  attachment, 
  attachment
) => 'return;

type backgroundColor<'return> = color_global => 'return;

type backgroundImage<'return> = bgImage_global => 
  'return;
type backgroundImage2<'return> = (
  bgImage, 
  bgImage,
) => 'return;
type backgroundImage3<'return> = (
  bgImage, 
  bgImage, 
  bgImage,
) => 'return;
type backgroundImage4<'return> = (
  bgImage, 
  bgImage, 
  bgImage, 
  bgImage,
) => 'return;

type backgroundPosition<'return> = position_global => 'return;
type backgroundPosition2<'return> = (
  position, 
  position,
) => 'return;
type backgroundPosition3<'return> = (
  position, 
  position, 
  position,
) => 'return;
type backgroundPosition4<'return> = (
  position, 
  position, 
  position, 
  position
) => 'return;

type backgroundStyle<'return> = repeatStyle_global => 'return;
type backgroundStyle2<'return> = (
  repeatStyle, 
  repeatStyle) => 'return;
type backgroundStyle3<'return> = (
  repeatStyle, 
  repeatStyle, 
  repeatStyle,
) => 'return;
type backgroundStyle4<'return> = (
  repeatStyle, 
  repeatStyle, 
  repeatStyle, 
  repeatStyle,
) => 'return;

type border<'return> = (
  ~width: lineWidth=?,
  ~color: color=?,
  [ | global | lineStyle ]
) => 'return;

type borderStyle<'return> = lineStyle_global => 'return;
type borderStyle2<'return> = (~tb: lineStyle, ~lr: lineStyle) => 'return;
type borderStyle3<'return> = (
  ~top: lineStyle, 
  ~lr: lineStyle, 
  ~bottom: lineStyle
) => 'return;
type borderStyle4<'return> = (
  ~top: lineStyle, 
  ~right: lineStyle, 
  ~bottom: lineStyle, 
  ~left: lineStyle
) => 'return;

type borderWidth<'return> = lineWidth_global => 'return;
type borderWidth2<'return> = (
  ~tb: lineWidth, ~
  lr: lineWidth,
) => 'return;
type borderWidth3<'return> = (
  ~top: lineWidth, 
  ~lr: lineWidth, 
  ~bottom: lineWidth,
) => 'return;
type borderWidth4<'return> = (
  ~top: lineWidth, 
  ~right: lineWidth, 
  ~bottom: lineWidth, 
  ~left: lineWidth,
) => 'return;

type borderColor<'return> = color_global => 'return;
type borderColor2<'return> = (
  ~tb: CssType.color, 
  ~lr: CssType.color,
) => 'return;
type borderColor3<'return> = (
  ~top: CssType.color, 
  ~lr: CssType.color, 
  ~bottom: CssType.color,
) => 'return;
type borderColor4<'return> = (
  ~top: CssType.color, 
  ~right: CssType.color, 
  ~bottom: CssType.color, 
  ~left: CssType.color,
) => 'return;

type color<'return> = color_global => 'return;

type clear<'return> = clear_global => 'return;

type cursor<'return> = cursorKeyword_global => 'return;
type cursor1<'return> = (
  cursorImage, 
  cursorKeyword,
) => 'return;
type cursor2<'return> = (
  cursorImage, 
  cursorImage, 
  cursorKeyword,
) => 'return;
type cursor3<'return> = (
  cursorImage, 
  cursorImage, 
  cursorImage, 
  cursorKeyword,
) => 'return;
type cursor4<'return> = (
  cursorImage, 
  cursorImage, 
  cursorImage, 
  cursorImage, 
  cursorKeyword,
) => 'return;

type fontFamily<'return> = fontFamily_global => 'return;
type fontFamily2<'return> = (
  CssType.fontFamily, 
  CssType.fontFamily,
) => 'return;
type fontFamily3<'return> = (
  CssType.fontFamily, 
  CssType.fontFamily,
  CssType.fontFamily,
) => 'return;
type fontFamily4<'return> = (
  CssType.fontFamily, 
  CssType.fontFamily,
  CssType.fontFamily,
  CssType.fontFamily,
) => 'return;

type fontWeight<'return> = fontWeight_global => 'return;

type margin<'return> = CssType.margin_global => 'return;
type margin2<'return> = (
  ~tb: CssType.margin, 
  ~lr: CssType.margin,
) => 'return;
type margin3<'return> = (
  ~top: CssType.margin, 
  ~lr: CssType.margin, 
  ~bottom: CssType.margin,
) => 'return;
type margin4<'return> = (
  ~top: CssType.margin, 
  ~right: CssType.margin, 
  ~bottom: CssType.margin, 
  ~left: CssType.margin,
) => 'return;

type padding<'return> = padding_global => 'return;
type padding2<'return> = (~tb: CssType.padding, ~lr: CssType.padding) => 'return;
type padding3<'return> = (~top: CssType.padding, ~lr: CssType.padding, ~bottom: CssType.padding) => 'return;
type padding4<'return> = (
  ~top: CssType.padding, 
  ~right: CssType.padding, 
  ~bottom: CssType.padding, 
  ~left: CssType.padding
) => 'return;