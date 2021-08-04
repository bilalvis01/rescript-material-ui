open CssPropertyValue;
open CssValueHelper;
open Jest;

test("border", (.) => {
  expect(border(#solid))->toBe(borderString("solid"));
  expect(border(~color=#red, #dashed))
    ->toBe(borderString("red dashed"));
  expect(border(~width=rem(1.0), #solid))
    ->toBe(borderString("1rem solid"));
  expect(border(~width=#thick, ~color=rgbX("32a1ce"), #double))
    ->toBe(borderString("thick #32a1ce double"));
  expect(border(~width=mm(4.), ~color=rgba(170., 50., 220., 0.6), #ridge))
    ->toBe(borderString("4mm rgba(170, 50, 220, 0.6) ridge"));
});

test("borderStyle", (.) => {
  expect(borderStyle(#solid))->toBe(borderStyleString("solid"));
  expect(borderStyle2(~tb=#solid, ~lr=#dashed))->toBe(borderStyleString("solid dashed"));
  expect(borderStyle3(~top=#solid, ~lr=#dashed, ~bottom=#dotted))->toBe(borderStyleString("solid dashed dotted"));
  expect(borderStyle4(~bottom=#dotted, ~top=#dashed, ~left=#inset, ~right=#solid))
    ->toBe(borderStyleString("dashed solid dotted inset"));
});

test("borderWidth", (.) => {
  expect(borderWidth(px(1.)))->toBe(borderWidthString("1px"));
  expect(borderWidth2(~tb=#thin, ~lr=#medium))->toBe(borderWidthString("thin medium"));
  expect(borderWidth3(~top=#thin, ~lr=#medium, ~bottom=px(2.)))->toBe(borderWidthString("thin medium 2px"));
  expect(borderWidth4(~bottom=#thin, ~top=#medium, ~left=px(4.), ~right=px(2.)))
    ->toBe(borderWidthString("medium 2px thin 4px"));
});

test("borderColor", (.) => {
  expect(borderColor(#red))->toBe(borderColorString("red"));
  expect(borderColor2(~tb=#red, ~lr=rgbX("000000ff")))->toBe(borderColorString("red #000000ff"));
  expect(borderColor3(~top=#red, ~lr=rgb(255., 255., 255.), ~bottom=hsl(deg(360.), pct(100.), pct(50.))))
    ->toBe(borderColorString("red rgb(255, 255, 255) hsl(360deg, 100%, 50%)"));
  expect(borderColor4(~bottom=#red, ~top=#blue, ~left=rgb(255., 255., 255.), ~right=rgba(0., 0., 0., 0.5)))
    ->toBe(borderColorString("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)"));
});

test("background", (.) => {
  expect(background(#initial))->toBe(backgroundString("initial"));
  expect(background(~color=#red, #initial))->toBe(backgroundString("initial"));
  expect(background(#red))->toBe(backgroundString("red"));
  expect(background(rgb(255., 255., 255.)))->toBe(backgroundString("rgb(255, 255, 255)"));
  expect(background(~repeat=#"repeat-y", url("test.jpg")))
    ->toBe(backgroundString(`url("test.jpg") repeat-y`))
  expect(background2(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
  ))
  ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(background3(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
  ))
  ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
  expect(background4(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
  ))
  ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(background4(
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
  ))
  ->toBe(backgroundString(`url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat`));
});

test("backgroundAttachment", (.) => {
  expect(backgroundAttachment(#scroll))->toBe(backgroundAttachmentString("scroll"));
  expect(backgroundAttachment2(#scroll, #fixed))->toBe(backgroundAttachmentString("scroll, fixed"));
  expect(backgroundAttachment3(#scroll, #fixed, #fixed))->toBe(backgroundAttachmentString("scroll, fixed, fixed"));
  expect(backgroundAttachment4(#scroll, #fixed, #fixed, #local))->toBe(backgroundAttachmentString("scroll, fixed, fixed, local"));
});

test("backgroundColor", (.) => {
  expect(backgroundColor(rgb(200., 200., 200.)))->toBe(backgroundColorString("rgb(200, 200, 200)"));
});

test("backgroundImage", (.) => {
  expect(backgroundImage(url("image.png")))->toBe(backgroundImageString(`url("image.png")`));
  expect(backgroundImage2(url("image.png"), image(url("myimage.jpg"))))
  ->toBe(backgroundImageString(`url("image.png"), image(url("myimage.jpg"))`));
  expect(backgroundImage3(url("image.png"), image(url("myimage.jpg")), linearGradient(#red)))
  ->toBe(backgroundImageString(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red)`));
  expect(backgroundImage4(url("image.png"), image(url("myimage.jpg")), linearGradient(#red), radialGradient(#blue)))
  ->toBe(backgroundImageString(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red), radial-gradient(blue)`));
});

test("backgroundPosition", (.) => {
  expect(backgroundPosition(px(10.)))->toBe(backgroundPositionString("10px"));
  expect(backgroundPosition2(px(10.), position2(#center, #bottom)))
  ->toBe(backgroundPositionString("10px, center bottom"));
  expect(backgroundPosition3(px(10.), position2(#center, #bottom), #center))
  ->toBe(backgroundPositionString("10px, center bottom, center"));
  expect(backgroundPosition4(px(10.), position2(#center, #bottom), pct(10.), position4(#left, px(10.), #top, pct(10.))))
  ->toBe(backgroundPositionString("10px, center bottom, 10%, left 10px top 10%"));
});

test("backgroundStyle", (.) => {
  expect(backgroundStyle(#"repeat-x"))->toBe(backgroundStyleString("repeat-x"));
  expect(backgroundStyle2(#"repeat-x", #"repeat repeat"))->toBe(backgroundStyleString("repeat-x, repeat repeat"));
  expect(backgroundStyle3(#"repeat-x", #"repeat repeat", #"no-repeat"))
  ->toBe(backgroundStyleString("repeat-x, repeat repeat, no-repeat"));
  expect(backgroundStyle4(#"repeat-x", #"repeat repeat", #"no-repeat", #space))
  ->toBe(backgroundStyleString("repeat-x, repeat repeat, no-repeat, space"));
});

test("margin", (.) => {
  expect(margin(px(24.)))->toBe(marginString("24px"));
  expect(margin(#initial))->toBe(marginString("initial"));
  expect(margin2(~tb=rem(2.), ~lr=rem(4.)))->toBe(marginString("2rem 4rem"));
  expect(margin3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toBe(marginString("10px 24px 40px"));
  expect(margin4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toBe(marginString("20px 40px 20px 40px"));
  expect(marginTop(px(24.)))->toBe(marginTopString("24px"));
  expect(marginTop(#initial))->toBe(marginTopString("initial"));
  expect(marginRight(px(24.)))->toBe(marginRightString("24px"));
  expect(marginRight(#initial))->toBe(marginRightString("initial"));
  expect(marginBottom(px(24.)))->toBe(marginBottomString("24px"));
  expect(marginBottom(#initial))->toBe(marginBottomString("initial"));
  expect(marginLeft(px(24.)))->toBe(marginLeftString("24px"));
  expect(marginLeft(#initial))->toBe(marginLeftString("initial"));
});

test("padding", (.) => {
  expect(padding(px(24.)))->toBe(paddingString("24px"));
  expect(padding(#initial))->toBe(paddingString("initial"));
  expect(padding2(~tb=rem(2.), ~lr=rem(4.)))->toBe(paddingString("2rem 4rem"));
  expect(padding3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toBe(paddingString("10px 24px 40px"));
  expect(padding4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toBe(paddingString("20px 40px 20px 40px"));
  expect(paddingTop(px(24.)))->toBe(paddingTopString("24px"));
  expect(paddingTop(#initial))->toBe(paddingTopString("initial"));
  expect(paddingRight(px(24.)))->toBe(paddingRightString("24px"));
  expect(paddingRight(#initial))->toBe(paddingRightString("initial"));
  expect(paddingBottom(px(24.)))->toBe(paddingBottomString("24px"));
  expect(paddingBottom(#initial))->toBe(paddingBottomString("initial"));
  expect(paddingLeft(px(24.)))->toBe(paddingLeftString("24px"));
  expect(paddingLeft(#initial))->toBe(paddingLeftString("initial"));
});

test("cursor", (.) => {
  expect(cursor(#auto))->toBe(cursorString("auto"));
  expect(cursor(#initial))->toBe(cursorString("initial"));
  expect(cursor1(url("image.png"), #default))->toBe(cursorString(`url("image.png"), default`));
  expect(cursor1(#url2("image.png", 12.), #default))->toBe(cursorString(`url("image.png") 12, default`));
  expect(cursor1(#url3("image.png", 12., 24.), #default))->toBe(cursorString(`url("image.png") 12 24, default`));
  expect(cursor2(url("image.png"), url("image2.png"), #default))
  ->toBe(cursorString(`url("image.png"), url("image2.png"), default`));
  expect(cursor3(url("image.png"), url("image2.png"), url("image3.png"), #default))
  ->toBe(cursorString(`url("image.png"), url("image2.png"), url("image3.png"), default`));
  expect(cursor4(url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), #default))
  ->toBe(cursorString(`url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), default`));
});