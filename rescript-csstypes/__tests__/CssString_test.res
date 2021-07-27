open Jest;
open CssString;

/*
Numeric data types
*/
describe("Numeric data types", (.) => {
  test("number", (.) => {
    expect(num(1.))->toBe("1");
    expect(number(Css.num(1.)))->toBe("1");
  });

  test("integer", (.) => {
    expect(int(1))->toBe("1");
    expect(integer(Css.int(1)))->toBe("1");
  });

  test("percentage", (.) => {
    expect(pct(1.))->toBe("1%");
    expect(percentage(Css.pct(1.)))->toBe("1%");
  });

  test ("ratio", (.) => {
    expect(ratio(Css.ratio(10, 10)))->toBe("10/10");
  });

  test("flex", (.) => {
    expect(fr(1.))->toBe("1fr");
    expect(flexUnit(Css.fr(1.)))->toBe("1fr");
  });
})

/*
Quantities data types
*/
describe("Quantities data types", (.) => {
  test("length", (.) => {
    expect(ch(1.))->toBe("1ch");
    expect(em(1.))->toBe("1em");
    expect(ex(1.))->toBe("1ex");
    expect(rem(1.))->toBe("1rem");
    expect(vh(1.))->toBe("1vh");
    expect(vw(1.))->toBe("1vw");
    expect(vmin(1.))->toBe("1vmin");
    expect(vmax(1.))->toBe("1vmax");
    expect(px(1.))->toBe("1px");
    expect(cm(1.))->toBe("1cm");
    expect(mm(1.))->toBe("1mm");
    expect(inch(1.))->toBe("1in");
    expect(pc(1.))->toBe("1pc");
    expect(pt(1.))->toBe("1pt");
    expect(length(Css.mm(1.)))->toBe("1mm");
    expect(length(Css.cm(1.)))->toBe("1cm");
  });

  test("angle", (.) => {
    expect(deg(1.))->toBe("1deg");
    expect(grad(1.))->toBe("1grad");
    expect(rad(1.))->toBe("1rad");
    expect(turn(1.))->toBe("1turn");
    expect(angle(Css.deg(1.)))->toBe("1deg");
    expect(angle(Css.grad(1.)))->toBe("1grad");
  }); 

  test("time", (.) => {
    expect(s(10.))->toBe("10s");
    expect(ms(10.))->toBe("10ms");
    expect(time(Css.s(10.)))->toBe("10s");
    expect(time(Css.ms(10.)))->toBe("10ms");
  });

  test("frequency", (.) => {
    expect(hz(50.))->toBe("50Hz");
    expect(kHz(100.))->toBe("100kHz");
    expect(kHz(-100.))->toBe("-100kHz");
    expect(frequency(Css.hz(50.)))->toBe("50Hz");
    expect(frequency(Css.kHz(100.)))->toBe("100kHz");
  });

  test("resolution", (.) => {
    expect(dpi(1.))->toBe("1dpi");
    expect(dpcm(1.))->toBe("1dpcm");
    expect(dppx(1.))->toBe("1dppx");
    expect(x(1.))->toBe("1x");
    expect(resolution(Css.dpi(1.)))->toBe("1dpi");
  });
});

/*
Combinations of types 
*/
describe("Combination data types", (.) => {
  test("length_percentage", (.) => {
    expect(length_percentage(Css.mm(1.)))->toBe("1mm");
    expect(length_percentage(Css.pct(1.)))->toBe("1%");
  });

  test("frequency_percentage", (.) => {
    expect(frequency_percentage(Css.hz(1.)))->toBe("1Hz");
    expect(frequency_percentage(Css.pct(1.)))->toBe("1%");
  });

  test("angle_percentage", (.) => {
    expect(angle_percentage(Css.deg(1.)))->toBe("1deg");
    expect(angle_percentage(Css.pct(1.)))->toBe("1%");
  });

  test("time_percentage", (.) => {
    expect(time_percentage(Css.s(1.)))->toBe("1s");
    expect(time_percentage(Css.pct(1.)))->toBe("1%");
  });
});

/*
Color data types
*/
describe("Color data types", (.) => {
  test("color", (.) => {
    expect(hue(Css.deg(1.)))->toBe("1deg");
    expect(hue(Css.num(1.)))->toBe("1");
    expect(alpha(Css.pct(1.)))->toBe("1%");
    expect(alpha(Css.num(1.)))->toBe("1");
    expect(rgbParam(Css.pct(1.)))->toBe("1%");
    expect(rgbParam(Css.num(1.)))->toBe("1");
    expect(hsl(Css.num(1.), Css.pct(10.), Css.pct(10.)))
      ->toBe("hsl(1, 10%, 10%)");
    expect(hsla(Css.num(1.), Css.pct(10.), Css.pct(10.), Css.num(1.)))
      ->toBe("hsla(1, 10%, 10%, 1)");
    expect(hsl(#1, Css.pct(10.), Css.pct(10.)))
      ->toBe("hsl(1, 10%, 10%)");
    expect(hsla(#1, Css.pct(10.), Css.pct(10.), Css.num(1.)))
      ->toBe("hsla(1, 10%, 10%, 1)");
    expect(rgb(Css.num(1.), Css.num(1.), Css.pct(10.)))
      ->toBe("rgb(1, 1, 10%)");
    expect(rgba(Css.num(1.), Css.num(1.), Css.pct(10.), Css.num(1.)))
      ->toBe("rgba(1, 1, 10%, 1)");
    expect(rgb(#255, #255, #255))
      ->toBe("rgb(255, 255, 255)");
    expect(rgba(Css.num(0.), Css.num(0.), Css.num(0.), Css.num(1.)))
      ->toBe("rgba(0, 0, 0, 1)");
    expect(rgbX("000000"))->toBe("#000000");
    expect(color(Css.rgbX("000000")))->toBe("#000000");
    expect(color(Css.rgb(10., 10., 10.)))
      ->toBe("rgb(10, 10, 10)");
  });
});

describe("Line", (.) => {
  test("lineWidth", (.) => {
    expect(lineWidth(#thick))->toBe("thick");
    expect(lineWidth(Css.mm(10.)))->toBe("10mm");
  });
});

describe("transformOrigin", (.) => {
  test("transformOrigin", (.) => {
    expect(transformOrigin(#left))->toBe("left");
    expect(transformOrigin(Css.px(20.)))->toBe("20px");
    expect(transformOrigin(Css.transformOrigin2(#left, #top)))->toBe("left top");
    expect(transformOrigin(Css.transformOrigin2(~length=Css.px(10.), #left, #top)))->toBe("left top 10px");
  }); 
});

describe("Image data types", (.) => {
  test("gradientLineDirection", (.) => {
    expect(gradientLineAngle(#"to top"))->toBe("to top");
    expect(gradientLineAngle(#"to top left"))->toBe("to top left");
    expect(gradientLineAngle(Css.turn(0.25)))->toBe("0.25turn");
  });

  test("linearColorStop", (.) => {
    expect(linearColorStop(#red))->toBe("red");
    expect(linearColorStop(Css.rgb(255., 255., 255.)))->toBe("rgb(255, 255, 255)");
    expect(linearColorStop(Css.pct(10.)))->toBe("10%");
    expect(linearColorStop(Css.px(25.)))->toBe("25px");
    expect(linearColorStop(Css.linearColorStop2(#red, Css.pct(10.))))->toBe("red 10%");
    expect(linearColorStop(Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(10.), Css.pct(50.))))
      ->toBe("rgb(255, 255, 255) 10% 50%");
  });

  test("linearGradient", (.) => {
    expect(linearGradient(Css.linearGradient(Css.rgb(0., 0., 0.))))->toBe("linear-gradient(rgb(0, 0, 0))");
    expect(linearGradient(Css.linearGradient(~angle=Css.turn(0.25), Css.rgb(0., 0., 0.))))
      ->toBe("linear-gradient(0.25turn, rgb(0, 0, 0))");
    expect(linearGradient(Css.linearGradient(~angle=Css.turn(0.25), Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)))))
      ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
    expect(linearGradient(Css.linearGradient2(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
    expect(linearGradient(Css.linearGradient3(
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(linearGradient(Css.linearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(linearGradient(Css.linearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.pct(30.),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
    expect(linearGradient(Css.linearGradient4(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
      Css.linearColorStop3(#red, Css.pct(70.), Css.pct(100.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
  });

  test("repeatingLinearGradient", (.) => {
    expect(repeatingLinearGradient(Css.repeatingLinearGradient(Css.rgb(0., 0., 0.))))->toBe("repeating-linear-gradient(rgb(0, 0, 0))");
    expect(repeatingLinearGradient(Css.repeatingLinearGradient(~angle=Css.turn(0.25), Css.rgb(0., 0., 0.))))
      ->toBe("repeating-linear-gradient(0.25turn, rgb(0, 0, 0))");
    expect(repeatingLinearGradient(Css.repeatingLinearGradient(~angle=Css.turn(0.25), Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)))))
      ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
    expect(repeatingLinearGradient(Css.repeatingLinearGradient2(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
    expect(repeatingLinearGradient(Css.repeatingLinearGradient3(
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("repeating-linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(repeatingLinearGradient(Css.repeatingLinearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(repeatingLinearGradient(Css.repeatingLinearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.pct(30.),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
    expect(repeatingLinearGradient(Css.repeatingLinearGradient4(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
      Css.linearColorStop3(#red, Css.pct(70.), Css.pct(100.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
  });

  test("gradient", (.) => {
    expect(gradient(Css.linearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.pct(30.),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
    expect(gradient(Css.linearGradient4(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255., 255., 255.), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255., 255., 255.), Css.pct(50.), Css.pct(60.)),
      Css.linearColorStop3(#red, Css.pct(70.), Css.pct(100.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
  });

  test("url", (.) => {
    expect(url(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
  });

  test("imageSrc", (.) => {
    expect(imageSrc(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
    expect(imageSrc(Css.src("myimage.png")))->toBe(`"myimage.png"`);
  });

  test("image", (.) => {
    expect(image(Css.image(Css.src("myimage.webp#xywh=0,20,40,60"))))->toBe(`image("myimage.webp#xywh=0,20,40,60")`);
    expect(image(Css.image(Css.url("myimage.png"))))->toBe(`image(url("myimage.png"))`);
    expect(image(Css.image(Css.rgba(0., 0., 0., 0.25))))->toBe("image(rgba(0, 0, 0, 0.25))");
    expect(image(Css.image(~color=Css.rgba(0., 0., 0., 0.25), #red)))->toBe("image(red)");
    expect(image(Css.image(~dir=#ltr, Css.src("myimage.png"))))->toBe(`image(ltr "myimage.png")`);
    expect(image(Css.image(~dir=#ltr, ~color=#red, Css.src("myimage.png"))))->toBe(`image(ltr "myimage.png", red)`);
  });

  test("bgSize", (.) => {
    expect(bgSize(#cover))->toBe("cover");
    expect(bgSize(Css.px(24.)))->toBe("24px");
    expect(bgSize(Css.bgSize2(#auto, Css.px(24.))))->toBe("auto 24px");
    expect(bgSize(Css.bgSize2(Css.px(24.), Css.px(24.))))->toBe("24px 24px");
  });

  test("bgPosition", (.) => {
    expect(bgPosition(#center))->toBe("center");
    expect(bgPosition(Css.px(20.)))->toBe("20px");
    expect(bgPosition(Css.bgPosition2(#left, #top)))->toBe("left top");
    expect(bgPosition(Css.bgPosition3(#left, #top, Css.pct(10.))))->toBe("left top 10%");
    expect(bgPosition(Css.bgPosition3(#left, Css.pct(20.), #bottom)))->toBe("left 20% bottom");
    expect(bgPosition(Css.bgPosition4(#right, Css.pct(35.), #bottom, Css.pct(45.))))
      ->toBe("right 35% bottom 45%");
  });
});

describe("background", (.) => {
  test("background", (.) => {
    expect(background(#red))->toBe("red");
    expect(background(Css.rgb(255., 255., 255.)))->toBe("rgb(255, 255, 255)");
    expect(background(~color=#red, Css.rgb(255., 255., 255.)))->toBe("rgb(255, 255, 255)");
    expect(background(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
    expect(background(~repeat=#"repeat-y", Css.url("test.jpg")))
      ->toBe(`url("test.jpg") repeat-y`)
    expect(background(~origin=#"border-box", #red))
      ->toBe("red border-box");
    expect(background(~origin=#"border-box", ~clip=#"padding-box", #red))
      ->toBe("red border-box padding-box");
    expect(background(~clip=#"padding-box", #red))
      ->toBe("red");
    expect(background(~repeat=#"no-repeat", ~position=#center, ~size=Css.pct(80.), Css.url("../img/image.png")))
      ->toBe(`url("../img/image.png") center / 80% no-repeat`);
    expect(background(~repeat=#"no-repeat", ~size=Css.pct(80.), Css.url("../img/image.png")))
      ->toBe(`url("../img/image.png") no-repeat`);
    expect(bgLayer(#red))->toBe("red");
    expect(bgLayer(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
    expect(bgLayer(Css.bgLayer(~repeat=#"repeat-y", Css.url("test.jpg"))))->toBe(`url("test.jpg") repeat-y`);
    expect(bgLayer(Css.bgLayer(~repeat=#"no-repeat", ~position=#center, ~size=Css.pct(80.), Css.url("../img/image.png"))))
      ->toBe(`url("../img/image.png") center / 80% no-repeat`);
  });
});