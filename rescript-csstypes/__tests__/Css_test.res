open Jest;
open Css;

describe("property", (.) => {
  test("property", (.) => {
    expect(property("border", CssPropertyValue.string("solid")))
      ->toEqual(Obj.magic(("border", "solid")));
    expect(propertyString("borderStyle", "dotted"))
      ->toEqual(Obj.magic(("borderStyle", "dotted")));
    expect(propertyNumber("padding", 1.))
      ->toEqual(Obj.magic(("padding", 1.0)));
    expect(propertyInteger("padding", 1))
      ->toEqual(Obj.magic(("padding", 1)));
  });
});

describe("border", (.) => {
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
  });

  test("borderTopWidth", (.) => {
    expect(borderTopWidth(px(1.)))->toEqual(propertyString("borderTopWidth", "1px"));
    expect(borderTopWidth2(~tb=px(1.), ~lr=#thin))->toEqual(propertyString("borderTopWidth", "1px thin"));
    expect(borderTopWidth3(~top=#thin, ~lr=#medium, ~bottom=#thick))
      ->toEqual(propertyString("borderTopWidth", "thin medium thick"));
    expect(borderTopWidth4(~top=px(1.), ~bottom=px(1.), ~right=#thin, ~left=#thick))
      ->toEqual(propertyString("borderTopWidth", "1px thin 1px thick"));
  });

  test("borderRightWidth", (.) => {
    expect(borderRightWidth(px(1.)))->toEqual(propertyString("borderRightWidth", "1px"));
    expect(borderRightWidth2(~tb=px(1.), ~lr=#thin))->toEqual(propertyString("borderRightWidth", "1px thin"));
    expect(borderRightWidth3(~top=#thin, ~lr=#medium, ~bottom=#thick))
      ->toEqual(propertyString("borderRightWidth", "thin medium thick"));
    expect(borderRightWidth4(~top=px(1.), ~bottom=px(1.), ~right=#thin, ~left=#thick))
      ->toEqual(propertyString("borderRightWidth", "1px thin 1px thick"));
  });

  test("borderBottomWidth", (.) => {
    expect(borderBottomWidth(px(1.)))->toEqual(propertyString("borderBottomWidth", "1px"));
    expect(borderBottomWidth2(~tb=px(1.), ~lr=#thin))->toEqual(propertyString("borderBottomWidth", "1px thin"));
    expect(borderBottomWidth3(~top=#thin, ~lr=#medium, ~bottom=#thick))
      ->toEqual(propertyString("borderBottomWidth", "thin medium thick"));
    expect(borderBottomWidth4(~top=px(1.), ~bottom=px(1.), ~right=#thin, ~left=#thick))
      ->toEqual(propertyString("borderBottomWidth", "1px thin 1px thick"));
  });

  test("borderLeftWidth", (.) => {
    expect(borderLeftWidth(px(1.)))->toEqual(propertyString("borderLeftWidth", "1px"));
    expect(borderLeftWidth2(~tb=px(1.), ~lr=#thin))->toEqual(propertyString("borderLeftWidth", "1px thin"));
    expect(borderLeftWidth3(~top=#thin, ~lr=#medium, ~bottom=#thick))
      ->toEqual(propertyString("borderLeftWidth", "thin medium thick"));
    expect(borderLeftWidth4(~top=px(1.), ~bottom=px(1.), ~right=#thin, ~left=#thick))
      ->toEqual(propertyString("borderLeftWidth", "1px thin 1px thick"));
  });

  test("borderStyle", (.) => {
    expect(borderStyle(#unset))->toEqual(propertyString("borderStyle", "unset"));
    expect(borderStyle2(~tb=#solid, ~lr=#dotted))->toEqual(propertyString("borderStyle", "solid dotted"));
    expect(borderStyle3(~top=#solid, ~lr=#inset, ~bottom=#dotted))
      ->toEqual(propertyString("borderStyle", "solid inset dotted"));
    expect(borderStyle4(~top=#solid, ~bottom=#dotted, ~left=#inset, ~right=#double))
      ->toEqual(propertyString("borderStyle", "solid double dotted inset"));
  });

  test("borderTopStyle", (.) => {
    expect(borderTopStyle(#unset))->toEqual(propertyString("borderTopStyle", "unset"));
    expect(borderTopStyle2(~tb=#solid, ~lr=#dotted))->toEqual(propertyString("borderTopStyle", "solid dotted"));
    expect(borderTopStyle3(~top=#solid, ~lr=#inset, ~bottom=#dotted))
      ->toEqual(propertyString("borderTopStyle", "solid inset dotted"));
    expect(borderTopStyle4(~top=#solid, ~bottom=#dotted, ~left=#inset, ~right=#double))
      ->toEqual(propertyString("borderTopStyle", "solid double dotted inset"));
  });

  test("borderRightStyle", (.) => {
    expect(borderRightStyle(#unset))->toEqual(propertyString("borderRightStyle", "unset"));
    expect(borderRightStyle2(~tb=#solid, ~lr=#dotted))->toEqual(propertyString("borderRightStyle", "solid dotted"));
    expect(borderRightStyle3(~top=#solid, ~lr=#inset, ~bottom=#dotted))
      ->toEqual(propertyString("borderRightStyle", "solid inset dotted"));
    expect(borderRightStyle4(~top=#solid, ~bottom=#dotted, ~left=#inset, ~right=#double))
      ->toEqual(propertyString("borderRightStyle", "solid double dotted inset"));
  });

  test("borderBottomStyle", (.) => {
    expect(borderBottomStyle(#unset))->toEqual(propertyString("borderBottomStyle", "unset"));
    expect(borderBottomStyle2(~tb=#solid, ~lr=#dotted))->toEqual(propertyString("borderBottomStyle", "solid dotted"));
    expect(borderBottomStyle3(~top=#solid, ~lr=#inset, ~bottom=#dotted))
      ->toEqual(propertyString("borderBottomStyle", "solid inset dotted"));
    expect(borderBottomStyle4(~top=#solid, ~bottom=#dotted, ~left=#inset, ~right=#double))
      ->toEqual(propertyString("borderBottomStyle", "solid double dotted inset"));
  });

  test("borderLeftStyle", (.) => {
    expect(borderLeftStyle(#unset))->toEqual(propertyString("borderLeftStyle", "unset"));
    expect(borderLeftStyle2(~tb=#solid, ~lr=#dotted))->toEqual(propertyString("borderLeftStyle", "solid dotted"));
    expect(borderLeftStyle3(~top=#solid, ~lr=#inset, ~bottom=#dotted))
      ->toEqual(propertyString("borderLeftStyle", "solid inset dotted"));
    expect(borderLeftStyle4(~top=#solid, ~bottom=#dotted, ~left=#inset, ~right=#double))
      ->toEqual(propertyString("borderLeftStyle", "solid double dotted inset"));
  });

  test("borderColor", (.) => {
    expect(borderColor(hsl(360., pct(50.), pct(50.))))->toEqual(propertyString("borderColor", "hsl(360, 50%, 50%)"));
    expect(borderColor2(~tb=#red, ~lr=#blue))->toEqual(propertyString("borderColor", "red blue"));
    expect(borderColor3(~top=rgbX("000000"), ~lr=rgbX("000000"), ~bottom=rgbX("111111")))
      ->toEqual(propertyString("borderColor", "#000000 #000000 #111111"));
    expect(borderColor4(~top=#red, ~bottom=#purple, ~right=#turquoise, ~left=#deeppink))
      ->toEqual(propertyString("borderColor", "red turquoise purple deeppink"));
  });

  test("borderTopColor", (.) => {
    expect(borderTopColor(hsl(360., pct(50.), pct(50.))))->toEqual(propertyString("borderTopColor", "hsl(360, 50%, 50%)"));
    expect(borderTopColor2(~tb=#red, ~lr=#blue))->toEqual(propertyString("borderTopColor", "red blue"));
    expect(borderTopColor3(~top=rgbX("000000"), ~lr=rgbX("000000"), ~bottom=rgbX("111111")))
      ->toEqual(propertyString("borderTopColor", "#000000 #000000 #111111"));
    expect(borderTopColor4(~top=#red, ~bottom=#purple, ~right=#turquoise, ~left=#deeppink))
      ->toEqual(propertyString("borderTopColor", "red turquoise purple deeppink"));
  });

  test("borderRightColor", (.) => {
    expect(borderRightColor(hsl(360., pct(50.), pct(50.))))->toEqual(propertyString("borderRightColor", "hsl(360, 50%, 50%)"));
    expect(borderRightColor2(~tb=#red, ~lr=#blue))->toEqual(propertyString("borderRightColor", "red blue"));
    expect(borderRightColor3(~top=rgbX("000000"), ~lr=rgbX("000000"), ~bottom=rgbX("111111")))
      ->toEqual(propertyString("borderRightColor", "#000000 #000000 #111111"));
    expect(borderRightColor4(~top=#red, ~bottom=#purple, ~right=#turquoise, ~left=#deeppink))
      ->toEqual(propertyString("borderRightColor", "red turquoise purple deeppink"));
  });

  test("borderBottomColor", (.) => {
    expect(borderBottomColor(hsl(360., pct(50.), pct(50.))))->toEqual(propertyString("borderBottomColor", "hsl(360, 50%, 50%)"));
    expect(borderBottomColor2(~tb=#red, ~lr=#blue))->toEqual(propertyString("borderBottomColor", "red blue"));
    expect(borderBottomColor3(~top=rgbX("000000"), ~lr=rgbX("000000"), ~bottom=rgbX("111111")))
      ->toEqual(propertyString("borderBottomColor", "#000000 #000000 #111111"));
    expect(borderBottomColor4(~top=#red, ~bottom=#purple, ~right=#turquoise, ~left=#deeppink))
      ->toEqual(propertyString("borderBottomColor", "red turquoise purple deeppink"));
  });

  test("borderLeftColor", (.) => {
    expect(borderLeftColor(hsl(360., pct(50.), pct(50.))))->toEqual(propertyString("borderLeftColor", "hsl(360, 50%, 50%)"));
    expect(borderLeftColor2(~tb=#red, ~lr=#blue))->toEqual(propertyString("borderLeftColor", "red blue"));
    expect(borderLeftColor3(~top=rgbX("000000"), ~lr=rgbX("000000"), ~bottom=rgbX("111111")))
      ->toEqual(propertyString("borderLeftColor", "#000000 #000000 #111111"));
    expect(borderLeftColor4(~top=#red, ~bottom=#purple, ~right=#turquoise, ~left=#deeppink))
      ->toEqual(propertyString("borderLeftColor", "red turquoise purple deeppink"));
  });
});

describe("background", (.) => {
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
    expect(backgroundColor(Css.rgb(200., 200., 200.)))->toEqual(propertyString("backgroundColor", "rgb(200, 200, 200)"));
  });

  test("backgroundImage", (.) => {
    expect(backgroundImage(Css.url("image.png")))->toEqual(propertyString("backgroundImage",`url("image.png")`));
    expect(backgroundImage2(Css.url("image.png"), Css.image(Css.url("myimage.jpg"))))
    ->toEqual(propertyString("backgroundImage", `url("image.png"), image(url("myimage.jpg"))`));
    expect(backgroundImage3(Css.url("image.png"), Css.image(Css.url("myimage.jpg")), Css.linearGradient(#red)))
    ->toEqual(propertyString("backgroundImage", `url("image.png"), image(url("myimage.jpg")), linear-gradient(red)`));
    expect(backgroundImage4(Css.url("image.png"), Css.image(Css.url("myimage.jpg")), Css.linearGradient(#red), Css.radialGradient(#blue)))
    ->toEqual(propertyString("backgroundImage", `url("image.png"), image(url("myimage.jpg")), linear-gradient(red), radial-gradient(blue)`));
  });

  test("backgroundPosition", (.) => {
    expect(backgroundPosition(Css.px(10.)))->toEqual(propertyString("backgroundPosition", "10px"));
    expect(backgroundPosition2(Css.px(10.), Css.position2(#center, #bottom)))
    ->toEqual(propertyString("backgroundPosition", "10px, center bottom"));
    expect(backgroundPosition3(Css.px(10.), Css.position2(#center, #bottom), #center))
    ->toEqual(propertyString("backgroundPosition", "10px, center bottom, center"));
    expect(backgroundPosition4(Css.px(10.), Css.position2(#center, #bottom), Css.pct(10.), Css.position4(#left, Css.px(10.), #top, Css.pct(10.))))
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
});