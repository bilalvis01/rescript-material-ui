open CssPropertyValue;
open Jest;

describe("border", (.) => {
  test("border", (.) => {
    expect(border(#solid))->toBe(borderString("solid"));
    expect(border(~color=#red, #dashed))
      ->toBe(borderString("red dashed"));
    expect(border(~width=Css.rem(1.0), #solid))
      ->toBe(borderString("1rem solid"));
    expect(border(~width=#thick, ~color=Css.rgbX("32a1ce"), #double))
      ->toBe(borderString("thick #32a1ce double"));
    expect(border(~width=Css.mm(4.), ~color=Css.rgba(170., 50., 220., 0.6), #ridge))
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
    expect(borderWidth(Css.px(1.)))->toBe(borderWidthString("1px"));
    expect(borderWidth2(~tb=#thin, ~lr=#medium))->toBe(borderWidthString("thin medium"));
    expect(borderWidth3(~top=#thin, ~lr=#medium, ~bottom=Css.px(2.)))->toBe(borderWidthString("thin medium 2px"));
    expect(borderWidth4(~bottom=#thin, ~top=#medium, ~left=Css.px(4.), ~right=Css.px(2.)))
      ->toBe(borderWidthString("medium 2px thin 4px"));
  });

  test("borderColor", (.) => {
    expect(borderColor(#red))->toBe(borderColorString("red"));
    expect(borderColor2(~tb=#red, ~lr=Css.rgbX("000000ff")))->toBe(borderColorString("red #000000ff"));
    expect(borderColor3(~top=#red, ~lr=Css.rgb(255., 255., 255.), ~bottom=Css.hsl(Css.deg(360.), Css.pct(100.), Css.pct(50.))))
      ->toBe(borderColorString("red rgb(255, 255, 255) hsl(360deg, 100%, 50%)"));
    expect(borderColor4(~bottom=#red, ~top=#blue, ~left=Css.rgb(255., 255., 255.), ~right=Css.rgba(0., 0., 0., 0.5)))
      ->toBe(borderColorString("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)"));
  });
});

describe("background", (.) => {
  test("background", (.) => {
    expect(background(#initial))->toBe(backgroundString("initial"));
    expect(background(~color=#red, #initial))->toBe(backgroundString("initial"));
    expect(background(#red))->toBe(backgroundString("red"));
    expect(background(Css.rgb(255., 255., 255.)))->toBe(backgroundString("rgb(255, 255, 255)"));
    expect(background(~repeat=#"repeat-y", Css.url("test.jpg")))
      ->toBe(backgroundString(`url("test.jpg") repeat-y`))
    expect(background2(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255., 0., 0., 0.8), Css.linearColorStop2(Css.rgba(255., 0., 0., 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0., 255., 0., 0.8), Css.linearColorStop2(Css.rgba(0., 255., 0., 0.), Css.pct(70.71))),
    ))
    ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
    expect(background3(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255., 0., 0., 0.8), Css.linearColorStop2(Css.rgba(255., 0., 0., 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0., 255., 0., 0.8), Css.linearColorStop2(Css.rgba(0., 255., 0., 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255., 0., 0., 0.8), Css.linearColorStop2(Css.rgba(255., 0., 0., 0.), Css.pct(70.71))),
    ))
    ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
    expect(background4(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255., 0., 0., 0.8), Css.linearColorStop2(Css.rgba(255., 0., 0., 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0., 255., 0., 0.8), Css.linearColorStop2(Css.rgba(0., 255., 0., 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255., 0., 0., 0.8), Css.linearColorStop2(Css.rgba(255., 0., 0., 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0., 255., 0., 0.8), Css.linearColorStop2(Css.rgba(0., 255., 0., 0.), Css.pct(70.71))),
    ))
    ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
    expect(background4(
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
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
    expect(backgroundColor(Css.rgb(200., 200., 200.)))->toBe(backgroundColorString("rgb(200, 200, 200)"));
  });

  test("backgroundImage", (.) => {
    expect(backgroundImage(Css.url("image.png")))->toBe(backgroundImageString(`url("image.png")`));
    expect(backgroundImage2(Css.url("image.png"), Css.image(Css.url("myimage.jpg"))))
    ->toBe(backgroundImageString(`url("image.png"), image(url("myimage.jpg"))`));
    expect(backgroundImage3(Css.url("image.png"), Css.image(Css.url("myimage.jpg")), Css.linearGradient(#red)))
    ->toBe(backgroundImageString(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red)`));
    expect(backgroundImage4(Css.url("image.png"), Css.image(Css.url("myimage.jpg")), Css.linearGradient(#red), Css.radialGradient(#blue)))
    ->toBe(backgroundImageString(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red), radial-gradient(blue)`));
  });

  test("backgroundPosition", (.) => {
    expect(backgroundPosition(Css.px(10.)))->toBe(backgroundPositionString("10px"));
    expect(backgroundPosition2(Css.px(10.), Css.position2(#center, #bottom)))
    ->toBe(backgroundPositionString("10px, center bottom"));
    expect(backgroundPosition3(Css.px(10.), Css.position2(#center, #bottom), #center))
    ->toBe(backgroundPositionString("10px, center bottom, center"));
    expect(backgroundPosition4(Css.px(10.), Css.position2(#center, #bottom), Css.pct(10.), Css.position4(#left, Css.px(10.), #top, Css.pct(10.))))
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
});

describe("spacing", (.) => {
  test("margin", (.) => {
    expect(margin(Css.px(24.)))->toBe(marginString("24px"));
    expect(margin(#initial))->toBe(marginString("initial"));
    expect(margin2(~tb=Css.rem(2.), ~lr=Css.rem(4.)))->toBe(marginString("2rem 4rem"));
    expect(margin3(~top=Css.px(10.), ~lr=Css.px(24.), ~bottom=Css.px(40.)))
    ->toBe(marginString("10px 24px 40px"));
    expect(margin4(~top=Css.px(20.), ~bottom=Css.px(20.), ~left=Css.px(40.), ~right=Css.px(40.)))
    ->toBe(marginString("20px 40px 20px 40px"));
    expect(marginTop(Css.px(24.)))->toBe(marginTopString("24px"));
    expect(marginTop(#initial))->toBe(marginTopString("initial"));
    expect(marginRight(Css.px(24.)))->toBe(marginRightString("24px"));
    expect(marginRight(#initial))->toBe(marginRightString("initial"));
    expect(marginBottom(Css.px(24.)))->toBe(marginBottomString("24px"));
    expect(marginBottom(#initial))->toBe(marginBottomString("initial"));
    expect(marginLeft(Css.px(24.)))->toBe(marginLeftString("24px"));
    expect(marginLeft(#initial))->toBe(marginLeftString("initial"));
  });

  test("padding", (.) => {
    expect(padding(Css.px(24.)))->toBe(paddingString("24px"));
    expect(padding(#initial))->toBe(paddingString("initial"));
    expect(padding2(~tb=Css.rem(2.), ~lr=Css.rem(4.)))->toBe(paddingString("2rem 4rem"));
    expect(padding3(~top=Css.px(10.), ~lr=Css.px(24.), ~bottom=Css.px(40.)))
    ->toBe(paddingString("10px 24px 40px"));
    expect(padding4(~top=Css.px(20.), ~bottom=Css.px(20.), ~left=Css.px(40.), ~right=Css.px(40.)))
    ->toBe(paddingString("20px 40px 20px 40px"));
    expect(paddingTop(Css.px(24.)))->toBe(paddingTopString("24px"));
    expect(paddingTop(#initial))->toBe(paddingTopString("initial"));
    expect(paddingRight(Css.px(24.)))->toBe(paddingRightString("24px"));
    expect(paddingRight(#initial))->toBe(paddingRightString("initial"));
    expect(paddingBottom(Css.px(24.)))->toBe(paddingBottomString("24px"));
    expect(paddingBottom(#initial))->toBe(paddingBottomString("initial"));
    expect(paddingLeft(Css.px(24.)))->toBe(paddingLeftString("24px"));
    expect(paddingLeft(#initial))->toBe(paddingLeftString("initial"));
  });
});

describe("others", (.) => {
  test("cursor", (.) => {
    expect(cursor(#auto))->toBe(cursorString("auto"));
    expect(cursor(#initial))->toBe(cursorString("initial"));
    expect(cursor1(Css.url("image.png"), #default))->toBe(cursorString(`url("image.png"), default`));
    expect(cursor1(#url2("image.png", 12.), #default))->toBe(cursorString(`url("image.png") 12, default`));
    expect(cursor1(#url3("image.png", 12., 24.), #default))->toBe(cursorString(`url("image.png") 12 24, default`));
    expect(cursor2(Css.url("image.png"), Css.url("image2.png"), #default))
    ->toBe(cursorString(`url("image.png"), url("image2.png"), default`));
    expect(cursor3(Css.url("image.png"), Css.url("image2.png"), Css.url("image3.png"), #default))
    ->toBe(cursorString(`url("image.png"), url("image2.png"), url("image3.png"), default`));
    expect(cursor4(Css.url("image.png"), Css.url("image2.png"), Css.url("image3.png"), Css.url("image4.png"), #default))
    ->toBe(cursorString(`url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), default`));
  });
});