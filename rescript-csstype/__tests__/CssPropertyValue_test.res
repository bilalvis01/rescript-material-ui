open CssValueHelper;
open Jest;

test("border", (.) => {
  expect(CssBorder.value(#solid))
  ->toBe(CssBorder.string("solid"));
  expect(CssBorder.value(~color=#red, #dashed))
  ->toBe(CssBorder.string("red dashed"));
  expect(CssBorder.value(~width=rem(1.0), #solid))
  ->toBe(CssBorder.string("1rem solid"));
  expect(CssBorder.value(~width=#thick, ~color=hexColor("32a1ce"), #double))
  ->toBe(CssBorder.string("thick #32a1ce double"));
  expect(CssBorder.value(~width=mm(4.), ~color=rgba(170., 50., 220., 0.6), #ridge))
  ->toBe(CssBorder.string("4mm rgba(170, 50, 220, 0.6) ridge"));
});

test("borderStyle", (.) => {
  expect(CssBorderStyle.value(#solid))
  ->toBe(CssBorderStyle.string("solid"));
  expect(CssBorderStyle.value2(~tb=#solid, ~lr=#dashed))
  ->toBe(CssBorderStyle.string("solid dashed"));
  expect(CssBorderStyle.value3(~top=#solid, ~lr=#dashed, ~bottom=#dotted))
  ->toBe(CssBorderStyle.string("solid dashed dotted"));
  expect(CssBorderStyle.value4(~bottom=#dotted, ~top=#dashed, ~left=#inset, ~right=#solid))
  ->toBe(CssBorderStyle.string("dashed solid dotted inset"));
});

test("borderWidth", (.) => {
  expect(CssBorderWidth.value(px(1.)))
  ->toBe(CssBorderWidth.string("1px"));
  expect(CssBorderWidth.value2(~tb=#thin, ~lr=#medium))
  ->toBe(CssBorderWidth.string("thin medium"));
  expect(CssBorderWidth.value3(~top=#thin, ~lr=#medium, ~bottom=px(2.)))
  ->toBe(CssBorderWidth.string("thin medium 2px"));
  expect(CssBorderWidth.value4(~bottom=#thin, ~top=#medium, ~left=px(4.), ~right=px(2.)))
  ->toBe(CssBorderWidth.string("medium 2px thin 4px"));
});

test("borderColor", (.) => {
  expect(CssBorderColor.value(#red))
  ->toBe(CssBorderColor.string("red"));
  expect(CssBorderColor.value2(~tb=#red, ~lr=hexColor("000000ff")))
  ->toBe(CssBorderColor.string("red #000000ff"));
  expect(CssBorderColor.value3(~top=#red, ~lr=rgb(255., 255., 255.), ~bottom=hsl(deg(360.), pct(100.), pct(50.))))
  ->toBe(CssBorderColor.string("red rgb(255, 255, 255) hsl(360deg, 100%, 50%)"));
  expect(CssBorderColor.value4(~bottom=#red, ~top=#blue, ~left=rgb(255., 255., 255.), ~right=rgba(0., 0., 0., 0.5)))
  ->toBe(CssBorderColor.string("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)"));
});

test("background", (.) => {
  expect(CssBackground.value(#initial))
  ->toBe(CssBackground.string("initial"));
  expect(CssBackground.value(~color=#red, #initial))
  ->toBe(CssBackground.string("initial"));
  expect(CssBackground.value(#red))
  ->toBe(CssBackground.string("red"));
  expect(CssBackground.value(rgb(255., 255., 255.)))
  ->toBe(CssBackground.string("rgb(255, 255, 255)"));
  expect(CssBackground.value(~repeat=#repeatY, url("test.jpg")))
  ->toBe(CssBackground.string(`url("test.jpg") repeat-y`))
  expect(CssBackground.value2(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
  ))
  ->toBe(CssBackground.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(CssBackground.value3(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
  ))
  ->toBe(CssBackground.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
  expect(CssBackground.value4(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
  ))
  ->toBe(CssBackground.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(CssBackground.value4(
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
  ))
  ->toBe(CssBackground.string(`url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat`));
});

test("backgroundAttachment", (.) => {
  expect(CssBackgroundAttachment.value(#scroll))
  ->toBe(CssBackgroundAttachment.string("scroll"));
  expect(CssBackgroundAttachment.value2(#scroll, #fixed))
  ->toBe(CssBackgroundAttachment.string("scroll, fixed"));
  expect(CssBackgroundAttachment.value3(#scroll, #fixed, #fixed))
  ->toBe(CssBackgroundAttachment.string("scroll, fixed, fixed"));
  expect(CssBackgroundAttachment.value4(#scroll, #fixed, #fixed, #local))
  ->toBe(CssBackgroundAttachment.string("scroll, fixed, fixed, local"));
});

test("backgroundColor", (.) => {
  expect(CssBackgroundColor.value(rgb(200., 200., 200.)))
  ->toBe(CssBackgroundColor.string("rgb(200, 200, 200)"));
});

test("backgroundImage", (.) => {
  expect(CssBackgroundImage.value(url("image.png")))
  ->toBe(CssBackgroundImage.string(`url("image.png")`));
  expect(CssBackgroundImage.value2(url("image.png"), image(url("myimage.jpg"))))
  ->toBe(CssBackgroundImage.string(`url("image.png"), image(url("myimage.jpg"))`));
  expect(CssBackgroundImage.value3(url("image.png"), image(url("myimage.jpg")), linearGradient(#red)))
  ->toBe(CssBackgroundImage.string(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red)`));
  expect(CssBackgroundImage.value4(url("image.png"), image(url("myimage.jpg")), linearGradient(#red), radialGradient(#blue)))
  ->toBe(CssBackgroundImage.string(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red), radial-gradient(blue)`));
});

test("backgroundPosition", (.) => {
  expect(CssBackgroundPosition.value(px(10.)))
  ->toBe(CssBackgroundPosition.string("10px"));
  expect(CssBackgroundPosition.value2(px(10.), position2(#center, #bottom)))
  ->toBe(CssBackgroundPosition.string("10px, center bottom"));
  expect(CssBackgroundPosition.value3(px(10.), position2(#center, #bottom), #center))
  ->toBe(CssBackgroundPosition.string("10px, center bottom, center"));
  expect(CssBackgroundPosition.value4(px(10.), position2(#center, #bottom), pct(10.), position4(#left, px(10.), #top, pct(10.))))
  ->toBe(CssBackgroundPosition.string("10px, center bottom, 10%, left 10px top 10%"));
});

test("backgroundStyle", (.) => {
  expect(CssBackgroundStyle.value(#repeatX))
  ->toBe(CssBackgroundStyle.string("repeat-x"));
  expect(CssBackgroundStyle.value2(#repeatX, #repeat__repeat))
  ->toBe(CssBackgroundStyle.string("repeat-x, repeat repeat"));
  expect(CssBackgroundStyle.value3(#repeatX, #repeat__repeat, #noRepeat))
  ->toBe(CssBackgroundStyle.string("repeat-x, repeat repeat, no-repeat"));
  expect(CssBackgroundStyle.value4(#repeatX, #repeat__repeat, #noRepeat, #space))
  ->toBe(CssBackgroundStyle.string("repeat-x, repeat repeat, no-repeat, space"));
});

test("margin", (.) => {
  expect(CssMargin.value(px(24.)))
  ->toBe(CssMargin.string("24px"));
  expect(CssMargin.value(#initial))
  ->toBe(CssMargin.string("initial"));
  expect(CssMargin.value2(~tb=rem(2.), ~lr=rem(4.)))
  ->toBe(CssMargin.string("2rem 4rem"));
  expect(CssMargin.value3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toBe(CssMargin.string("10px 24px 40px"));
  expect(CssMargin.value4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toBe(CssMargin.string("20px 40px 20px 40px"));
  expect(CssMarginTop.value(px(24.)))
  ->toBe(CssMarginTop.string("24px"));
  expect(CssMarginTop.value(#initial))
  ->toBe(CssMarginTop.string("initial"));
  expect(CssMarginRight.value(px(24.)))
  ->toBe(CssMarginRight.string("24px"));
  expect(CssMarginRight.value(#initial))
  ->toBe(CssMarginRight.string("initial"));
  expect(CssMarginBottom.value(px(24.)))
  ->toBe(CssMarginBottom.string("24px"));
  expect(CssMarginBottom.value(#initial))
  ->toBe(CssMarginBottom.string("initial"));
  expect(CssMarginLeft.value(px(24.)))
  ->toBe(CssMarginLeft.string("24px"));
  expect(CssMarginLeft.value(#initial))
  ->toBe(CssMarginLeft.string("initial"));
});

test("padding", (.) => {
  expect(CssPadding.value(px(24.)))
  ->toBe(CssPadding.string("24px"));
  expect(CssPadding.value(#initial))
  ->toBe(CssPadding.string("initial"));
  expect(CssPadding.value2(~tb=rem(2.), ~lr=rem(4.)))
  ->toBe(CssPadding.string("2rem 4rem"));
  expect(CssPadding.value3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toBe(CssPadding.string("10px 24px 40px"));
  expect(CssPadding.value4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toBe(CssPadding.string("20px 40px 20px 40px"));
  expect(CssPaddingTop.value(px(24.)))
  ->toBe(CssPaddingTop.string("24px"));
  expect(CssPaddingTop.value(#initial))
  ->toBe(CssPaddingTop.string("initial"));
  expect(CssPaddingRight.value(px(24.)))
  ->toBe(CssPaddingRight.string("24px"));
  expect(CssPaddingRight.value(#initial))
  ->toBe(CssPaddingRight.string("initial"));
  expect(CssPaddingBottom.value(px(24.)))
  ->toBe(CssPaddingBottom.string("24px"));
  expect(CssPaddingBottom.value(#initial))
  ->toBe(CssPaddingBottom.string("initial"));
  expect(CssPaddingLeft.value(px(24.)))
  ->toBe(CssPaddingLeft.string("24px"));
  expect(CssPaddingLeft.value(#initial))
  ->toBe(CssPaddingLeft.string("initial"));
});

test("cursor", (.) => {
  expect(CssCursor.value(#auto))
  ->toBe(CssCursor.string("auto"));
  expect(CssCursor.value(#initial))
  ->toBe(CssCursor.string("initial"));
  expect(CssCursor.value1(url("image.png"), #default))
  ->toBe(CssCursor.string(`url("image.png"), default`));
  expect(CssCursor.value1(#Url2("image.png", 12.), #default))
  ->toBe(CssCursor.string(`url("image.png") 12, default`));
  expect(CssCursor.value1(#Url3("image.png", 12., 24.), #default))
  ->toBe(CssCursor.string(`url("image.png") 12 24, default`));
  expect(CssCursor.value2(url("image.png"), url("image2.png"), #default))
  ->toBe(CssCursor.string(`url("image.png"), url("image2.png"), default`));
  expect(CssCursor.value3(url("image.png"), url("image2.png"), url("image3.png"), #default))
  ->toBe(CssCursor.string(`url("image.png"), url("image2.png"), url("image3.png"), default`));
  expect(CssCursor.value4(url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), #default))
  ->toBe(CssCursor.string(`url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), default`));
});

test("fontWeight", (.) => {
  expect(CssFontWeight.value(#initial))
  ->toBe(CssFontWeight.string("initial"));
  expect(CssFontWeight.value(#bold))
  ->toBe(CssFontWeight.string("bold"));
});

test("FontFamily", (.) => {
  expect(CssFontFamily.value(#initial))
  ->toBe(CssFontFamily.string("initial"));
  expect(CssFontFamily.value(#sansSerif))
  ->toBe(CssFontFamily.string("sans-serif"));
  expect(CssFontFamily.value(#Family("Gill Sans Extrabold")))
  ->toBe(CssFontFamily.string(`"Gill Sans Extrabold"`));
  expect(CssFontFamily.value2(#Family("Gill Sans Extrabold"), #sansSerif))
  ->toBe(CssFontFamily.string(`"Gill Sans Extrabold", sans-serif`));
  expect(CssFontFamily.value3(#Family("Roboto"), #Family("Helvetica"), #sansSerif))
  ->toBe(CssFontFamily.string(`"Roboto", "Helvetica", sans-serif`));
  expect(CssFontFamily.value4(#Family("Roboto"), #Family("Helvetica"), #Family("Arial"), #sansSerif))
  ->toBe(CssFontFamily.string(`"Roboto", "Helvetica", "Arial", sans-serif`));
});