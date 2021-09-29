open CssValueType;

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

type color<'return> = color_global => 'return;