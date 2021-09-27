open CssValueHelper;
open Jest;

module Background = CssBackground;
module BackgroundAttachment = CssBackgroundAttachment;
module BackgroundColor = CssBackgroundColor;
module BackgroundImage = CssBackgroundImage;
module BackgroundPosition = CssBackgroundPosition;
module BackgroundStyle = CssBackgroundStyle;

test("background", (.) => {
  expect(Background.value(#initial))
  ->toBe(Background.string("initial"));
  expect(Background.value(~color=#red, #initial))
  ->toBe(Background.string("initial"));
  expect(Background.value(#red))
  ->toBe(Background.string("red"));
  expect(Background.value(rgb(255, 255, 255)))
  ->toBe(Background.string("rgb(255, 255, 255)"));
  expect(Background.value(~repeat=#repeatY, url("test.jpg")))
  ->toBe(Background.string(`url("test.jpg") repeat-y`))
  expect(Background.value2(
    linearGradient2(~angle=deg(217.), rgba(255, 0, 0, 0.8), linearColorStop2(rgba(255, 0, 0, 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0, 255, 0, 0.8), linearColorStop2(rgba(0, 255, 0, 0.), pct(70.71))),
  ))
  ->toBe(Background.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(Background.value3(
    linearGradient2(~angle=deg(217.), rgba(255, 0, 0, 0.8), linearColorStop2(rgba(255, 0, 0, 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0, 255, 0, 0.8), linearColorStop2(rgba(0, 255, 0, 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255, 0, 0, 0.8), linearColorStop2(rgba(255, 0, 0, 0.), pct(70.71))),
  ))
  ->toBe(Background.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
  expect(Background.value4(
    linearGradient2(~angle=deg(217.), rgba(255, 0, 0, 0.8), linearColorStop2(rgba(255, 0, 0, 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0, 255, 0, 0.8), linearColorStop2(rgba(0, 255, 0, 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255, 0, 0, 0.8), linearColorStop2(rgba(255, 0, 0, 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0, 255, 0, 0.8), linearColorStop2(rgba(0, 255, 0, 0.), pct(70.71))),
  ))
  ->toBe(Background.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(Background.value4(
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
  ))
  ->toBe(Background.string(`url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat`));
});

test("backgroundAttachment", (.) => {
  expect(BackgroundAttachment.value(#scroll))
  ->toBe(BackgroundAttachment.string("scroll"));
  expect(BackgroundAttachment.value2(#scroll, #fixed))
  ->toBe(BackgroundAttachment.string("scroll, fixed"));
  expect(BackgroundAttachment.value3(#scroll, #fixed, #fixed))
  ->toBe(BackgroundAttachment.string("scroll, fixed, fixed"));
  expect(BackgroundAttachment.value4(#scroll, #fixed, #fixed, #local))
  ->toBe(BackgroundAttachment.string("scroll, fixed, fixed, local"));
});

test("backgroundColor", (.) => {
  expect(BackgroundColor.value(rgb(200, 200, 200)))
  ->toBe(BackgroundColor.string("rgb(200, 200, 200)"));
});

test("backgroundImage", (.) => {
  expect(BackgroundImage.value(url("image.png")))
  ->toBe(BackgroundImage.string(`url("image.png")`));
  expect(BackgroundImage.value2(url("image.png"), image(url("myimage.jpg"))))
  ->toBe(BackgroundImage.string(`url("image.png"), image(url("myimage.jpg"))`));
  expect(BackgroundImage.value3(url("image.png"), image(url("myimage.jpg")), linearGradient(#red)))
  ->toBe(BackgroundImage.string(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red)`));
  expect(BackgroundImage.value4(url("image.png"), image(url("myimage.jpg")), linearGradient(#red), radialGradient(#blue)))
  ->toBe(BackgroundImage.string(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red), radial-gradient(blue)`));
});

test("backgroundPosition", (.) => {
  expect(BackgroundPosition.value(px(10)))
  ->toBe(BackgroundPosition.string("10px"));
  expect(BackgroundPosition.value2(px(10), position2(#center, #bottom)))
  ->toBe(BackgroundPosition.string("10px, center bottom"));
  expect(BackgroundPosition.value3(px(10), position2(#center, #bottom), #center))
  ->toBe(BackgroundPosition.string("10px, center bottom, center"));
  expect(BackgroundPosition.value4(px(10), position2(#center, #bottom), pct(10.), position4(#left, px(10), #top, pct(10.))))
  ->toBe(BackgroundPosition.string("10px, center bottom, 10%, left 10px top 10%"));
});

test("backgroundStyle", (.) => {
  expect(BackgroundStyle.value(#repeatX))
  ->toBe(BackgroundStyle.string("repeat-x"));
  expect(BackgroundStyle.value2(#repeatX, #repeat__repeat))
  ->toBe(BackgroundStyle.string("repeat-x, repeat repeat"));
  expect(BackgroundStyle.value3(#repeatX, #repeat__repeat, #noRepeat))
  ->toBe(BackgroundStyle.string("repeat-x, repeat repeat, no-repeat"));
  expect(BackgroundStyle.value4(#repeatX, #repeat__repeat, #noRepeat, #space))
  ->toBe(BackgroundStyle.string("repeat-x, repeat repeat, no-repeat, space"));
});

module Border = CssBorder;
module BorderColor = CssBorderColor;
module BorderStyle = CssBorderStyle;
module BorderWidth = CssBorderWidth;

test("border", (.) => {
  expect(Border.value(#solid))
  ->toBe(Border.string("solid"));
  expect(Border.value(~color=#red, #dashed))
  ->toBe(Border.string("red dashed"));
  expect(Border.value(~width=rem(1.0), #solid))
  ->toBe(Border.string("1rem solid"));
  expect(Border.value(~width=#thick, ~color=hexColor("32a1ce"), #double))
  ->toBe(Border.string("thick #32a1ce double"));
  expect(Border.value(~width=mm(4.), ~color=rgba(170, 50, 220, 0.6), #ridge))
  ->toBe(Border.string("4mm rgba(170, 50, 220, 0.6) ridge"));
});

test("borderColor", (.) => {
  expect(BorderColor.value(#red))
  ->toBe(BorderColor.string("red"));
  expect(BorderColor.value2(~tb=#red, ~lr=hexColor("000000ff")))
  ->toBe(BorderColor.string("red #000000ff"));
  expect(BorderColor.value3(~top=#red, ~lr=rgb(255, 255, 255), ~bottom=hsl(360, pct(100.), pct(50.))))
  ->toBe(BorderColor.string("red rgb(255, 255, 255) hsl(360, 100%, 50%)"));
  expect(BorderColor.value4(~bottom=#red, ~top=#blue, ~left=rgb(255, 255, 255), ~right=rgba(0, 0, 0, 0.5)))
  ->toBe(BorderColor.string("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)"));
});

test("borderStyle", (.) => {
  expect(BorderStyle.value(#solid))
  ->toBe(BorderStyle.string("solid"));
  expect(BorderStyle.value2(~tb=#solid, ~lr=#dashed))
  ->toBe(BorderStyle.string("solid dashed"));
  expect(BorderStyle.value3(~top=#solid, ~lr=#dashed, ~bottom=#dotted))
  ->toBe(BorderStyle.string("solid dashed dotted"));
  expect(BorderStyle.value4(~bottom=#dotted, ~top=#dashed, ~left=#inset, ~right=#solid))
  ->toBe(BorderStyle.string("dashed solid dotted inset"));
});

test("borderWidth", (.) => {
  expect(BorderWidth.value(px(1)))
  ->toBe(BorderWidth.string("1px"));
  expect(BorderWidth.value2(~tb=#thin, ~lr=#medium))
  ->toBe(BorderWidth.string("thin medium"));
  expect(BorderWidth.value3(~top=#thin, ~lr=#medium, ~bottom=px(2)))
  ->toBe(BorderWidth.string("thin medium 2px"));
  expect(BorderWidth.value4(~bottom=#thin, ~top=#medium, ~left=px(4), ~right=px(2)))
  ->toBe(BorderWidth.string("medium 2px thin 4px"));
});

module Cursor = CssCursor;

test("cursor", (.) => {
  expect(Cursor.value(#auto))
  ->toBe(Cursor.string("auto"));
  expect(Cursor.value(#initial))
  ->toBe(Cursor.string("initial"));
  expect(Cursor.value1(url("image.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), default`));
  expect(Cursor.value2(url("image.png"), url("image2.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), url("image2.png"), default`));
  expect(Cursor.value3(url("image.png"), url("image2.png"), url("image3.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), url("image2.png"), url("image3.png"), default`));
  expect(Cursor.value4(url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), default`));
});

module FontFamily = CssFontFamily;

test("FontFamily", (.) => {
  expect(FontFamily.value(#initial))
  ->toBe(FontFamily.string("initial"));
  expect(FontFamily.value(#sansSerif))
  ->toBe(FontFamily.string("sans-serif"));
  expect(FontFamily.value(#Family("Gill Sans Extrabold")))
  ->toBe(FontFamily.string(`"Gill Sans Extrabold"`));
  expect(FontFamily.value2(#Family("Gill Sans Extrabold"), #sansSerif))
  ->toBe(FontFamily.string(`"Gill Sans Extrabold", sans-serif`));
  expect(FontFamily.value3(#Family("Roboto"), #Family("Helvetica"), #sansSerif))
  ->toBe(FontFamily.string(`"Roboto", "Helvetica", sans-serif`));
  expect(FontFamily.value4(#Family("Roboto"), #Family("Helvetica"), #Family("Arial"), #sansSerif))
  ->toBe(FontFamily.string(`"Roboto", "Helvetica", "Arial", sans-serif`));
});

module FontWeight = CssFontWeight;

test("fontWeight", (.) => {
  expect(FontWeight.value(#initial))
  ->toBe(FontWeight.string("initial"));
  expect(FontWeight.value(#bold))
  ->toBe(FontWeight.string("bold"));
});

module Margin = CssMargin;
module MarginSide = {
  type t;
  include CssMarginSide.MakeValue({
    type t = t;
  });
};

test("margin", (.) => {
  expect(Margin.value(px(24)))
  ->toBe(Margin.string("24px"));
  expect(Margin.value(#initial))
  ->toBe(Margin.string("initial"));
  expect(Margin.value2(~tb=rem(2.), ~lr=rem(4.)))
  ->toBe(Margin.string("2rem 4rem"));
  expect(Margin.value3(~top=px(10), ~lr=px(24), ~bottom=px(40)))
  ->toBe(Margin.string("10px 24px 40px"));
  expect(Margin.value4(~top=px(20), ~bottom=px(20), ~left=px(40), ~right=px(40)))
  ->toBe(Margin.string("20px 40px 20px 40px"));
  expect(MarginSide.value(px(24)))
  ->toBe(MarginSide.string("24px"));
  expect(MarginSide.value(#initial))
  ->toBe(MarginSide.string("initial"));
});

module Padding = CssPadding;
module PaddingSide = {
  type t;
  include CssPaddingSide.MakeValue({
    type t = t;
  });
};

test("padding", (.) => {
  expect(Padding.value(px(24)))
  ->toBe(Padding.string("24px"));
  expect(Padding.value(#initial))
  ->toBe(Padding.string("initial"));
  expect(Padding.value2(~tb=rem(2.), ~lr=rem(4.)))
  ->toBe(Padding.string("2rem 4rem"));
  expect(Padding.value3(~top=px(10), ~lr=px(24), ~bottom=px(40)))
  ->toBe(Padding.string("10px 24px 40px"));
  expect(Padding.value4(~top=px(20), ~bottom=px(20), ~left=px(40), ~right=px(40)))
  ->toBe(Padding.string("20px 40px 20px 40px"));
  expect(PaddingSide.value(px(24)))
  ->toBe(PaddingSide.string("24px"));
  expect(PaddingSide.value(#initial))
  ->toBe(PaddingSide.string("initial"));
});