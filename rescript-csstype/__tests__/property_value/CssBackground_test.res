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
  expect(Background.value(rgb(255., 255., 255.)))
  ->toBe(Background.string("rgb(255, 255, 255)"));
  expect(Background.value(~repeat=#repeatY, url("test.jpg")))
  ->toBe(Background.string(`url("test.jpg") repeat-y`))
  expect(Background.value2(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
  ))
  ->toBe(Background.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(Background.value3(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
  ))
  ->toBe(Background.string("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
  expect(Background.value4(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
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
  expect(BackgroundColor.value(rgb(200., 200., 200.)))
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
  expect(BackgroundPosition.value(px(10.)))
  ->toBe(BackgroundPosition.string("10px"));
  expect(BackgroundPosition.value2(px(10.), position2(#center, #bottom)))
  ->toBe(BackgroundPosition.string("10px, center bottom"));
  expect(BackgroundPosition.value3(px(10.), position2(#center, #bottom), #center))
  ->toBe(BackgroundPosition.string("10px, center bottom, center"));
  expect(BackgroundPosition.value4(px(10.), position2(#center, #bottom), pct(10.), position4(#left, px(10.), #top, pct(10.))))
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