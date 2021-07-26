open CssPropertyValue;
open Jest;

describe("border", (.) => {
  test("border", (.) => {
    expect(border(#solid))->toBe(borderString("solid"));
    expect(border2(~style=#dashed, #red))
      ->toBe(borderString("dashed red"));
    expect(border2(~style=#solid, Css.rem(1.0)))
      ->toBe(borderString("solid 1rem"));
    expect(border3(~width=#thick, ~style=#double, ~color=Css.rgbX("32a1ce")))
      ->toBe(borderString("thick double #32a1ce"));
    expect(border3(~width=Css.mm(4.), ~style=#ridge, ~color=Css.rgba(Css.num(170.), Css.num(50.), Css.num(220.), Css.num(0.6))))
      ->toBe(borderString("4mm ridge rgba(170, 50, 220, 0.6)"));
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
    expect(borderColor3(~top=#red, ~lr=Css.rgb(#255, #255, #255), ~bottom=Css.hsl(#360, Css.pct(100.), Css.pct(50.))))
      ->toBe(borderColorString("red rgb(255, 255, 255) hsl(360, 100%, 50%)"));
    expect(borderColor4(~bottom=#red, ~top=#blue, ~left=Css.rgb(#255, #255, #255), ~right=Css.rgba(#0, #0, #0, Css.num(0.5))))
      ->toBe(borderColorString("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)"));
  });

  test("background", (.) => {
    expect(background(#red))->toBe(backgroundString("red"));
    expect(background(Css.rgb(#255, #255, #255)))->toBe(backgroundString("rgb(255, 255, 255)"));
    expect(background(~repeat=#"repeat-y", Css.url("test.jpg")))
      ->toBe(backgroundString(`url("test.jpg") repeat-y`))
    expect(background2(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(#255, #0, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#255, #0, #0, Css.num(0.)), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(#0, #255, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#0, #255, #0, Css.num(0.)), Css.pct(70.71))),
    ))
    ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
    expect(background3(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(#255, #0, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#255, #0, #0, Css.num(0.)), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(#0, #255, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#0, #255, #0, Css.num(0.)), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(#255, #0, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#255, #0, #0, Css.num(0.)), Css.pct(70.71))),
    ))
    ->toBe(backgroundString("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
    expect(background4(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(#255, #0, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#255, #0, #0, Css.num(0.)), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(#0, #255, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#0, #255, #0, Css.num(0.)), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(#255, #0, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#255, #0, #0, Css.num(0.)), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(#0, #255, #0, Css.num(0.8)), Css.linearColorStop2(Css.rgba(#0, #255, #0, Css.num(0.)), Css.pct(70.71))),
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
});