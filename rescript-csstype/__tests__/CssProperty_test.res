open Jest;
open CssProperty;
open CssValue;
open CssFunction;

test("border", (.) => {
  expect(border(#dotted))->toEqual(propertyString("border", "dotted"));
  expect(border(~width=px(1.), #solid))->toEqual(propertyString("border", "1px solid"));
  expect(border(~width=px(1.), ~color=rgb(255., 255., 255.), #dotted))
    ->toEqual(propertyString("border", "1px rgb(255, 255, 255) dotted"));
});

test("borderTop", (.) => {
  expect(borderTop(#dotted))->toEqual(propertyString("borderTop", "dotted"));
  expect(borderTop(~width=px(1.), #solid))->toEqual(propertyString("borderTop", "1px solid"));
  expect(borderTop(~width=px(1.), ~color=rgb(255., 255., 255.), #dotted))
    ->toEqual(propertyString("borderTop", "1px rgb(255, 255, 255) dotted"));
});

test("borderRight", (.) => {
  expect(borderRight(#dotted))->toEqual(propertyString("borderRight", "dotted"));
  expect(borderRight(~width=px(1.), #solid))->toEqual(propertyString("borderRight", "1px solid"));
  expect(borderRight(~width=px(1.), ~color=rgb(255., 255., 255.), #dotted))
    ->toEqual(propertyString("borderRight", "1px rgb(255, 255, 255) dotted"));
});

test("borderBottom", (.) => {
  expect(borderBottom(#dotted))->toEqual(propertyString("borderBottom", "dotted"));
  expect(borderBottom(~width=px(1.), #solid))->toEqual(propertyString("borderBottom", "1px solid"));
  expect(borderBottom(~width=px(1.), ~color=rgb(255., 255., 255.), #dotted))
    ->toEqual(propertyString("borderBottom", "1px rgb(255, 255, 255) dotted"));
});

test("borderLeft", (.) => {
  expect(borderLeft(#dotted))->toEqual(propertyString("borderLeft", "dotted"));
  expect(borderLeft(~width=px(1.), #solid))->toEqual(propertyString("borderLeft", "1px solid"));
  expect(borderLeft(~width=px(1.), ~color=rgb(255., 255., 255.), #dotted))
    ->toEqual(propertyString("borderLeft", "1px rgb(255, 255, 255) dotted"));
});

test("borderWidth", (.) => {
  expect(borderWidth(px(1.)))->toEqual(propertyString("borderWidth", "1px"));
  expect(borderWidth2(~tb=px(1.), ~lr=#thin))->toEqual(propertyString("borderWidth", "1px thin"));
  expect(borderWidth3(~top=#thin, ~lr=#medium, ~bottom=#thick))
  ->toEqual(propertyString("borderWidth", "thin medium thick"));
  expect(borderWidth4(~top=px(1.), ~bottom=px(1.), ~right=#thin, ~left=#thick))
  ->toEqual(propertyString("borderWidth", "1px thin 1px thick"));
  expect(borderTopWidth(px(1.)))->toEqual(propertyString("borderTopWidth", "1px"));
  expect(borderRightWidth(px(1.)))->toEqual(propertyString("borderRightWidth", "1px"));
  expect(borderBottomWidth(px(1.)))->toEqual(propertyString("borderBottomWidth", "1px"));
  expect(borderLeftWidth(px(1.)))->toEqual(propertyString("borderLeftWidth", "1px"));
});

test("borderStyle", (.) => {
  expect(borderStyle(#unset))->toEqual(propertyString("borderStyle", "unset"));
  expect(borderStyle2(~tb=#solid, ~lr=#dotted))->toEqual(propertyString("borderStyle", "solid dotted"));
  expect(borderStyle3(~top=#solid, ~lr=#inset, ~bottom=#dotted))
  ->toEqual(propertyString("borderStyle", "solid inset dotted"));
  expect(borderStyle4(~top=#solid, ~bottom=#dotted, ~left=#inset, ~right=#double))
  ->toEqual(propertyString("borderStyle", "solid double dotted inset"));
  expect(borderTopStyle(#unset))->toEqual(propertyString("borderTopStyle", "unset"));
  expect(borderRightStyle(#unset))->toEqual(propertyString("borderRightStyle", "unset"));
  expect(borderBottomStyle(#unset))->toEqual(propertyString("borderBottomStyle", "unset"));
  expect(borderLeftStyle(#unset))->toEqual(propertyString("borderLeftStyle", "unset"));

});

test("borderColor", (.) => {
  expect(borderColor(hsl(deg(360.), pct(50.), pct(50.))))->toEqual(propertyString("borderColor", "hsl(360deg, 50%, 50%)"));
  expect(borderColor2(~tb=#red, ~lr=#blue))->toEqual(propertyString("borderColor", "red blue"));
  expect(borderColor3(~top=rgbX("000000"), ~lr=rgbX("000000"), ~bottom=rgbX("111111")))
  ->toEqual(propertyString("borderColor", "#000000 #000000 #111111"));
  expect(borderColor4(~top=#red, ~bottom=#purple, ~right=#turquoise, ~left=#deeppink))
  ->toEqual(propertyString("borderColor", "red turquoise purple deeppink"));
  expect(borderTopColor(hsl(deg(360.), pct(50.), pct(50.))))
  ->toEqual(propertyString("borderTopColor", "hsl(360deg, 50%, 50%)"));
  expect(borderRightColor(hsl(deg(360.), pct(50.), pct(50.))))
  ->toEqual(propertyString("borderRightColor", "hsl(360deg, 50%, 50%)"));
  expect(borderBottomColor(hsl(deg(360.), pct(50.), pct(50.))))
  ->toEqual(propertyString("borderBottomColor", "hsl(360deg, 50%, 50%)"));
  expect(borderLeftColor(hsl(deg(360.), pct(50.), pct(50.))))
  ->toEqual(propertyString("borderLeftColor", "hsl(360deg, 50%, 50%)"));
});

test("background", (.) => {
  expect(background(#initial))->toEqual(propertyString("background", "initial"));
  expect(background(~color=#red, #initial))->toEqual(propertyString("background", "initial"));
  expect(background(#red))->toEqual(propertyString("background", "red"));
  expect(background(rgb(255., 255., 255.)))->toEqual(propertyString("background", "rgb(255, 255, 255)"));
  expect(background(~repeat=#"repeat-y", url("test.jpg")))
    ->toEqual(propertyString("background", `url("test.jpg") repeat-y`));
  expect(background2(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
  ))
  ->toEqual(propertyString("background", "linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(background3(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
  ))
  ->toEqual(propertyString("background", "linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
  expect(background4(
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(217.), rgba(255., 0., 0., 0.8), linearColorStop2(rgba(255., 0., 0., 0.), pct(70.71))),
    linearGradient2(~angle=deg(127.), rgba(0., 255., 0., 0.8), linearColorStop2(rgba(0., 255., 0., 0.), pct(70.71))),
  ))
  ->toEqual(propertyString("background","linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
  expect(background4(
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
    bgLayer(~repeat=#repeat, url("myimage.png")),
  ))
  ->toEqual(propertyString("background", `url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat`));
});

test("backgroundAttachment", (.) => {
  expect(backgroundAttachment(#scroll))->toEqual(propertyString("backgroundAttachment", "scroll"));
  expect(backgroundAttachment2(#scroll, #fixed))->toEqual(propertyString("backgroundAttachment", "scroll, fixed"));
  expect(backgroundAttachment3(#scroll, #fixed, #fixed))->toEqual(propertyString("backgroundAttachment", "scroll, fixed, fixed"));
  expect(backgroundAttachment4(#scroll, #fixed, #fixed, #local))->toEqual(propertyString("backgroundAttachment", "scroll, fixed, fixed, local"));
});

test("backgroundColor", (.) => {
  expect(backgroundColor(rgb(200., 200., 200.)))->toEqual(propertyString("backgroundColor", "rgb(200, 200, 200)"));
});

test("backgroundImage", (.) => {
  expect(backgroundImage(url("image.png")))->toEqual(propertyString("backgroundImage",`url("image.png")`));
  expect(backgroundImage2(url("image.png"), image(url("myimage.jpg"))))
  ->toEqual(propertyString("backgroundImage", `url("image.png"), image(url("myimage.jpg"))`));
  expect(backgroundImage3(url("image.png"), image(url("myimage.jpg")), linearGradient(#red)))
  ->toEqual(propertyString("backgroundImage", `url("image.png"), image(url("myimage.jpg")), linear-gradient(red)`));
  expect(backgroundImage4(url("image.png"), image(url("myimage.jpg")), linearGradient(#red), radialGradient(#blue)))
  ->toEqual(propertyString("backgroundImage", `url("image.png"), image(url("myimage.jpg")), linear-gradient(red), radial-gradient(blue)`));
});

test("backgroundPosition", (.) => {
  expect(backgroundPosition(px(10.)))->toEqual(propertyString("backgroundPosition", "10px"));
  expect(backgroundPosition2(px(10.), position2(#center, #bottom)))
  ->toEqual(propertyString("backgroundPosition", "10px, center bottom"));
  expect(backgroundPosition3(px(10.), position2(#center, #bottom), #center))
  ->toEqual(propertyString("backgroundPosition", "10px, center bottom, center"));
  expect(backgroundPosition4(px(10.), position2(#center, #bottom), pct(10.), position4(#left, px(10.), #top, pct(10.))))
  ->toEqual(propertyString("backgroundPosition", "10px, center bottom, 10%, left 10px top 10%"));
});

test("backgroundStyle", (.) => {
  expect(backgroundStyle(#"repeat-x"))->toEqual(propertyString("backgroundStyle", "repeat-x"));
  expect(backgroundStyle2(#"repeat-x", #"repeat repeat"))->toEqual(propertyString("backgroundStyle", "repeat-x, repeat repeat"));
  expect(backgroundStyle3(#"repeat-x", #"repeat repeat", #"no-repeat"))
  ->toEqual(propertyString("backgroundStyle", "repeat-x, repeat repeat, no-repeat"));
  expect(backgroundStyle4(#"repeat-x", #"repeat repeat", #"no-repeat", #space))
  ->toEqual(propertyString("backgroundStyle", "repeat-x, repeat repeat, no-repeat, space"));
});

test("margin", (.) => {
  expect(margin(px(24.)))->toEqual(propertyString("margin", "24px"));
  expect(margin(#initial))->toEqual(propertyString("margin", "initial"));
  expect(margin2(~tb=rem(2.), ~lr=rem(4.)))->toEqual(propertyString("margin", "2rem 4rem"));
  expect(margin3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toEqual(propertyString("margin", "10px 24px 40px"));
  expect(margin4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toEqual(propertyString("margin", "20px 40px 20px 40px"));
  expect(marginTop(px(24.)))->toEqual(propertyString("marginTop", "24px"));
  expect(marginTop(#initial))->toEqual(propertyString("marginTop", "initial"));
  expect(marginRight(px(24.)))->toEqual(propertyString("marginRight", "24px"));
  expect(marginRight(#initial))->toEqual(propertyString("marginRight", "initial"));
  expect(marginBottom(px(24.)))->toEqual(propertyString("marginBottom", "24px"));
  expect(marginBottom(#initial))->toEqual(propertyString("marginBottom", "initial"));
  expect(marginLeft(px(24.)))->toEqual(propertyString("marginLeft", "24px"));
  expect(marginLeft(#initial))->toEqual(propertyString("marginLeft", "initial"));
});

test("padding", (.) => {
  expect(padding(px(24.)))->toEqual(propertyString("padding", "24px"));
  expect(padding(#initial))->toEqual(propertyString("padding", "initial"));
  expect(padding2(~tb=rem(2.), ~lr=rem(4.)))->toEqual(propertyString("padding", "2rem 4rem"));
  expect(padding3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toEqual(propertyString("padding", "10px 24px 40px"));
  expect(padding4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toEqual(propertyString("padding", "20px 40px 20px 40px"));
  expect(paddingTop(px(24.)))->toEqual(propertyString("paddingTop", "24px"));
  expect(paddingTop(#initial))->toEqual(propertyString("paddingTop", "initial"));
  expect(paddingRight(px(24.)))->toEqual(propertyString("paddingRight", "24px"));
  expect(paddingRight(#initial))->toEqual(propertyString("paddingRight", "initial"));
  expect(paddingBottom(px(24.)))->toEqual(propertyString("paddingBottom", "24px"));
  expect(paddingBottom(#initial))->toEqual(propertyString("paddingBottom", "initial"));
  expect(paddingLeft(px(24.)))->toEqual(propertyString("paddingLeft", "24px"));
  expect(paddingLeft(#initial))->toEqual(propertyString("paddingLeft", "initial"));
});

test("clear", (.) => {
  expect(clear(#none))->toEqual(propertyString("clear", "none"));
  expect(clear(#left))->toEqual(propertyString("clear", "left"));
  expect(clear(#inherit))->toEqual(propertyString("clear", "inherit"));
});

test("color", (.) => {
  expect(color(#rebeccapurple))->toEqual(propertyString("color", "rebeccapurple"));
  expect(color(rgbX("00ff00")))->toEqual(propertyString("color", "#00ff00"));
  expect(color(rgb(214., 122., 127.)))->toEqual(propertyString("color", "rgb(214, 122, 127)"));
  expect(color(hsl(deg(30.), pct(100.), pct(50.))))->toEqual(propertyString("color", "hsl(30deg, 100%, 50%)"));
  expect(color(hsla(deg(30.), pct(100.), pct(50.), 0.3)))->toEqual(propertyString("color", "hsla(30deg, 100%, 50%, 0.3)"));
  expect(color(#initial))->toEqual(colorString("initial"));
});

test("cursor", (.) => {
  expect(cursor(#auto))->toEqual(propertyString("cursor", "auto"));
  expect(cursor(#initial))->toEqual(propertyString("cursor", "initial"));
  expect(cursor1(url("image.png"), #default))->toEqual(propertyString("cursor", `url("image.png"), default`));
  expect(cursor1(#url2("image.png", 12.), #default))->toEqual(propertyString("cursor", `url("image.png") 12, default`));
  expect(cursor1(#url3("image.png", 12., 24.), #default))->toEqual(propertyString("cursor", `url("image.png") 12 24, default`));
  expect(cursor2(url("image.png"), url("image2.png"), #default))
  ->toEqual(propertyString("cursor", `url("image.png"), url("image2.png"), default`));
  expect(cursor3(url("image.png"), url("image2.png"), url("image3.png"), #default))
  ->toEqual(propertyString("cursor", `url("image.png"), url("image2.png"), url("image3.png"), default`));
  expect(cursor4(url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), #default))
  ->toEqual(propertyString("cursor", `url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), default`));
});