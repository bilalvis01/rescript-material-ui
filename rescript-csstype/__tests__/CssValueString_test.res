open Jest;

module Css = CssValueHelper;

/*
Numeric data types
*/
describe("Data", (.) => {
  test("number", (.) => {
    expect(CssString.Data.num(Css.num(1.)))->toBe("1");
  });

  test("integer", (.) => {
    expect(CssString.Data.int(Css.int(1)))->toBe("1");
  });

  test("percentage", (.) => {
    expect(CssString.Data.pct(1.))->toBe("1%");
    expect(CssString.Data.percentage(Css.pct(1.)))->toBe("1%");
  });

  test ("ratio", (.) => {
    expect(CssString.Data.ratio(Css.ratio(10, 10)))->toBe("10/10");
  });

  test("flex", (.) => {
    expect(CssString.Data.fr(1.))->toBe("1fr");
    expect(CssString.Data.flexUnit(Css.fr(1.)))->toBe("1fr");
  });

  test("length", (.) => {
    expect(CssString.Data.ch(1.))->toBe("1ch");
    expect(CssString.Data.em(1.))->toBe("1em");
    expect(CssString.Data.ex(1.))->toBe("1ex");
    expect(CssString.Data.rem(1.))->toBe("1rem");
    expect(CssString.Data.vh(1.))->toBe("1vh");
    expect(CssString.Data.vw(1.))->toBe("1vw");
    expect(CssString.Data.vmin(1.))->toBe("1vmin");
    expect(CssString.Data.vmax(1.))->toBe("1vmax");
    expect(CssString.Data.px(1))->toBe("1px");
    expect(CssString.Data.cm(1.))->toBe("1cm");
    expect(CssString.Data.mm(1.))->toBe("1mm");
    expect(CssString.Data.inch(1.))->toBe("1in");
    expect(CssString.Data.pc(1.))->toBe("1pc");
    expect(CssString.Data.pt(1.))->toBe("1pt");
    expect(CssString.Data.length(Css.mm(1.)))->toBe("1mm");
    expect(CssString.Data.length(Css.cm(1.)))->toBe("1cm");
  });

  test("angle", (.) => {
    expect(CssString.Data.deg(1.))->toBe("1deg");
    expect(CssString.Data.grad(1.))->toBe("1grad");
    expect(CssString.Data.rad(1.))->toBe("1rad");
    expect(CssString.Data.turn(1.))->toBe("1turn");
    expect(CssString.Data.angle(Css.deg(1.)))->toBe("1deg");
    expect(CssString.Data.angle(Css.grad(1.)))->toBe("1grad");
  }); 

  test("time", (.) => {
    expect(CssString.Data.s(10.))->toBe("10s");
    expect(CssString.Data.ms(10.))->toBe("10ms");
    expect(CssString.Data.time(Css.s(10.)))->toBe("10s");
    expect(CssString.Data.time(Css.ms(10.)))->toBe("10ms");
  });

  test("frequency", (.) => {
    expect(CssString.Data.hz(50.))->toBe("50Hz");
    expect(CssString.Data.kHz(100.))->toBe("100kHz");
    expect(CssString.Data.kHz(-100.))->toBe("-100kHz");
    expect(CssString.Data.frequency(Css.hz(50.)))->toBe("50Hz");
    expect(CssString.Data.frequency(Css.kHz(100.)))->toBe("100kHz");
  });

  test("resolution", (.) => {
    expect(CssString.Data.dpi(1.))->toBe("1dpi");
    expect(CssString.Data.dpcm(1.))->toBe("1dpcm");
    expect(CssString.Data.dppx(1.))->toBe("1dppx");
    expect(CssString.Data.x(1.))->toBe("1x");
    expect(CssString.Data.resolution(Css.dpi(1.)))->toBe("1dpi");
  });

  test("length_percentage", (.) => {
    expect(CssString.Data.length_percentage(Css.mm(1.)))->toBe("1mm");
    expect(CssString.Data.length_percentage(Css.pct(1.)))->toBe("1%");
  });

  test("frequency_percentage", (.) => {
    expect(CssString.Data.frequency_percentage(Css.hz(1.)))->toBe("1Hz");
    expect(CssString.Data.frequency_percentage(Css.pct(1.)))->toBe("1%");
  });

  test("angle_percentage", (.) => {
    expect(CssString.Data.angle_percentage(Css.deg(1.)))->toBe("1deg");
    expect(CssString.Data.angle_percentage(Css.pct(1.)))->toBe("1%");
  });

  test("time_percentage", (.) => {
    expect(CssString.Data.time_percentage(Css.s(1.)))->toBe("1s");
    expect(CssString.Data.time_percentage(Css.pct(1.)))->toBe("1%");
  });

  test("color", (.) => {
    expect(CssString.Data.hue(Css.deg(1.)))->toBe("1deg");
    expect(CssString.Data.alpha(Css.pct(1.)))->toBe("1%");
    expect(CssString.Data.alpha(Css.num(1.)))->toBe("1");
    expect(CssString.Data.rgbParam(Css.pct(1.)))->toBe("1%");
    expect(CssString.Data.rgbParam(Css.num(1.)))->toBe("1");
    expect(CssString.Data.rgb(Css.num(1.), Css.num(1.), Css.pct(10.)))
    ->toBe("rgb(1, 1, 10%)");
    expect(CssString.Data.rgba(Css.num(1.), Css.num(1.), Css.pct(10.), Css.num(1.)))
    ->toBe("rgba(1, 1, 10%, 1)");
    expect(CssString.Data.rgba(Css.num(0.), Css.num(0.), Css.num(0.), Css.num(1.)))
    ->toBe("rgba(0, 0, 0, 1)");
    expect(CssString.Data.hexColor("000000"))->toBe("#000000");
    expect(CssString.Data.color(Css.hexColor("000000")))->toBe("#000000");
    expect(CssString.Data.color(Css.rgb(10, 10, 10)))
    ->toBe("rgb(10, 10, 10)");
  });

  test("color_global", (.) => {
    expect(CssString.Data.color_global(Css.rgb(244, 244, 244)))->toBe("rgb(244, 244, 244)");
    expect(CssString.Data.color_global(#initial))->toBe("initial");
  });

  test("lineWidth", (.) => {
    expect(CssString.Data.lineWidth(#thick))->toBe("thick");
    expect(CssString.Data.lineWidth(Css.mm(10.)))->toBe("10mm");
  });

  test("lineWidth", (.) => {
    expect(CssString.Data.lineWidth_global(#thick))->toBe("thick");
    expect(CssString.Data.lineWidth_global(#initial))->toBe("initial");
  });

  test("transformOrigin", (.) => {
    expect(CssString.Data.transformOrigin(#left))->toBe("left");
    expect(CssString.Data.transformOrigin(Css.px(20)))->toBe("20px");
    expect(CssString.Data.transformOrigin(#TransformOrigin2(#left, #top)))->toBe("left top");
    expect(CssString.Data.transformOrigin(#TransformOrigin3(#left, #top, Css.px(10))))->toBe("left top 10px");
  });

  test("gradientLineDirection", (.) => {
    expect(CssString.Data.gradientLineAngle(#toTop))->toBe("to top");
    expect(CssString.Data.gradientLineAngle(#toTopLeft))->toBe("to top left");
    expect(CssString.Data.gradientLineAngle(Css.turn(0.25)))->toBe("0.25turn");
  });

  test("linearColorStop", (.) => {
    expect(CssString.Data.linearColorStop(#red))->toBe("red");
    expect(CssString.Data.linearColorStop(Css.rgb(255, 255, 255)))->toBe("rgb(255, 255, 255)");
    expect(CssString.Data.linearColorStop(Css.pct(10.)))->toBe("10%");
    expect(CssString.Data.linearColorStop(Css.px(25)))->toBe("25px");
    expect(CssString.Data.linearColorStop(Css.linearColorStop2(#red, Css.pct(10.))))->toBe("red 10%");
    expect(CssString.Data.linearColorStop(Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(10.), Css.pct(50.))))
    ->toBe("rgb(255, 255, 255) 10% 50%");
  });

  test("linearGradient", (.) => {
    expect(CssString.Data.linearGradient(Css.linearGradient(Css.rgb(0, 0, 0))))->toBe("linear-gradient(rgb(0, 0, 0))");
    expect(CssString.Data.linearGradient(Css.linearGradient(~angle=Css.turn(0.25), Css.rgb(0, 0, 0))))
    ->toBe("linear-gradient(0.25turn, rgb(0, 0, 0))");
    expect(CssString.Data.linearGradient(Css.linearGradient(~angle=Css.turn(0.25), Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)))))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
    expect(CssString.Data.linearGradient(Css.linearGradient2(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
    expect(CssString.Data.linearGradient(Css.linearGradient3(
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(CssString.Data.linearGradient(Css.linearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(CssString.Data.linearGradient(Css.linearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.pct(30.),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
    expect(CssString.Data.linearGradient(Css.linearGradient4(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
      Css.linearColorStop3(#red, Css.pct(70.), Css.pct(100.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
  });

  test("repeatingLinearGradient", (.) => {
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient(Css.rgb(0, 0, 0))))->toBe("repeating-linear-gradient(rgb(0, 0, 0))");
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient(~angle=Css.turn(0.25), Css.rgb(0, 0, 0))))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(0, 0, 0))");
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient(~angle=Css.turn(0.25), Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)))))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient2(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient3(
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("repeating-linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.pct(30.),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
    expect(CssString.Data.repeatingLinearGradient(Css.repeatingLinearGradient4(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
      Css.linearColorStop3(#red, Css.pct(70.), Css.pct(100.)),
    )))
    ->toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
  });

  test("radialGradient", (.) => {
    expect(CssString.Data.radialGradient(Css.radialGradient(Css.hexColor("9198e5"))))->toBe("radial-gradient(#9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient(~endingShape=#circle, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(circle, #9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient(~endingShape=#circle, ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(circle at center, #9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient(~endingShape=#circle, ~size=Css.px(10), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(circle 10px at center, #9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient(~endingShape=#ellipse, ~size=Css.px(10), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(ellipse at center, #9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient(~size=#Ellipse(Css.px(10), Css.px(10)), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(10px 10px at center, #9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient(~endingShape=#ellipse, ~size=#Ellipse(Css.px(10), Css.px(10)), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(ellipse 10px 10px at center, #9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient(~endingShape=#ellipse, ~size=Css.px(10), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(ellipse at center, #9198e5)");
    expect(CssString.Data.radialGradient(Css.radialGradient2(~endingShape=#circle, Css.hexColor("9198e5"), #red)))
    ->toBe("radial-gradient(circle, #9198e5, red)");
    expect(CssString.Data.radialGradient(Css.radialGradient3(~endingShape=#circle, Css.hexColor("9198e5"), #red, Css.rgb(255, 255, 255))))
    ->toBe("radial-gradient(circle, #9198e5, red, rgb(255, 255, 255))");
    expect(CssString.Data.radialGradient(Css.radialGradient4(~endingShape=#circle, Css.hexColor("9198e5"), #red, Css.rgb(255, 255, 255), Css.linearColorStop2(#blue, Css.pct(10.)))))
    ->toBe("radial-gradient(circle, #9198e5, red, rgb(255, 255, 255), blue 10%)");
  });

  test("repeatingRadialGradient", (.) => {
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(Css.hexColor("9198e5"))))->toBe("repeating-radial-gradient(#9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(~endingShape=#circle, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(circle, #9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(~endingShape=#circle, ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(circle at center, #9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(~endingShape=#circle, ~size=Css.px(10), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(circle 10px at center, #9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(~endingShape=#ellipse, ~size=Css.px(10), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(ellipse at center, #9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(~size=#Ellipse(Css.px(10), Css.px(10)), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(10px 10px at center, #9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(~endingShape=#ellipse, ~size=#Ellipse(Css.px(10), Css.px(10)), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(ellipse 10px 10px at center, #9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient(~endingShape=#ellipse, ~size=Css.px(10), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(ellipse at center, #9198e5)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient2(~endingShape=#circle, Css.hexColor("9198e5"), #red)))
    ->toBe("repeating-radial-gradient(circle, #9198e5, red)");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient3(~endingShape=#circle, Css.hexColor("9198e5"), #red, Css.rgb(255, 255, 255))))
    ->toBe("repeating-radial-gradient(circle, #9198e5, red, rgb(255, 255, 255))");
    expect(CssString.Data.repeatingRadialGradient(Css.repeatingRadialGradient4(~endingShape=#circle, Css.hexColor("9198e5"), #red, Css.rgb(255, 255, 255), Css.linearColorStop2(#blue, Css.pct(10.)))))
    ->toBe("repeating-radial-gradient(circle, #9198e5, red, rgb(255, 255, 255), blue 10%)");
  });

  test("conicGradient", (.) => {
    expect(CssString.Data.conicGradient(Css.conicGradient(#red)))->toBe("conic-gradient(red)");
    expect(CssString.Data.conicGradient(Css.conicGradient(~angle=Css.deg(360.), #red)))->toBe("conic-gradient(from 360deg, red)");
    expect(CssString.Data.conicGradient(Css.conicGradient(~angle=Css.deg(360.), ~position=Css.px(10), #red)))->toBe("conic-gradient(from 360deg at 10px, red)");
    expect(CssString.Data.conicGradient(Css.conicGradient2(#red, #blue)))->toBe("conic-gradient(red, blue)");
    expect(CssString.Data.conicGradient(Css.conicGradient3(#red, #blue, #yellow)))->toBe("conic-gradient(red, blue, yellow)");
    expect(CssString.Data.conicGradient(Css.conicGradient4(#red, #blue, #yellow, Css.rgb(250, 250, 250))))->toBe("conic-gradient(red, blue, yellow, rgb(250, 250, 250))");
  });

  test("repeatingConicGradient", (.) => {
    expect(CssString.Data.repeatingConicGradient(Css.repeatingConicGradient(#red)))->toBe("repeating-conic-gradient(red)");
    expect(CssString.Data.repeatingConicGradient(Css.repeatingConicGradient(~angle=Css.deg(360.), #red)))->toBe("repeating-conic-gradient(from 360deg, red)");
    expect(CssString.Data.repeatingConicGradient(Css.repeatingConicGradient(~angle=Css.deg(360.), ~position=Css.px(10), #red)))->toBe("repeating-conic-gradient(from 360deg at 10px, red)");
    expect(CssString.Data.repeatingConicGradient(Css.repeatingConicGradient2(#red, #blue)))->toBe("repeating-conic-gradient(red, blue)");
    expect(CssString.Data.repeatingConicGradient(Css.repeatingConicGradient3(#red, #blue, #yellow)))->toBe("repeating-conic-gradient(red, blue, yellow)");
    expect(CssString.Data.repeatingConicGradient(Css.repeatingConicGradient4(#red, #blue, #yellow, Css.rgb(250, 250, 250))))->toBe("repeating-conic-gradient(red, blue, yellow, rgb(250, 250, 250))");
  });

  test("gradient", (.) => {
    expect(CssString.Data.gradient(Css.linearGradient3(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.pct(30.),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
    expect(CssString.Data.gradient(Css.linearGradient4(
      ~angle=Css.turn(0.25), 
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(10.)),
      Css.linearColorStop2(Css.rgb(255, 255, 255), Css.pct(40.)),
      Css.linearColorStop3(Css.rgb(255, 255, 255), Css.pct(50.), Css.pct(60.)),
      Css.linearColorStop3(#red, Css.pct(70.), Css.pct(100.)),
    )))
    ->toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
    expect(CssString.Data.gradient(Css.repeatingLinearGradient(~angle=Css.deg(360.), #red)))->toBe("repeating-linear-gradient(360deg, red)");
    expect(CssString.Data.gradient(Css.radialGradient(~endingShape=#circle, ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("radial-gradient(circle at center, #9198e5)");
    expect(CssString.Data.gradient(Css.repeatingRadialGradient(~endingShape=#circle, ~size=Css.px(10), ~position=#center, Css.hexColor("9198e5"))))
    ->toBe("repeating-radial-gradient(circle 10px at center, #9198e5)");
    expect(CssString.Data.gradient(Css.conicGradient(~angle=Css.deg(360.), ~position=Css.px(10), #red)))->toBe("conic-gradient(from 360deg at 10px, red)");
    expect(CssString.Data.gradient(Css.repeatingConicGradient(~angle=Css.deg(360.), ~position=Css.px(10), #red)))
    ->toBe("repeating-conic-gradient(from 360deg at 10px, red)");
  });

  test("url", (.) => {
    expect(CssString.Data.url(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
  });

  test("imageSrc", (.) => {
    expect(CssString.Data.imageSrc(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
    expect(CssString.Data.imageSrc(Css.src("myimage.png")))->toBe(`"myimage.png"`);
  });

  test("image", (.) => {
    expect(CssString.Data.image(Css.image(Css.src("myimage.webp#xywh=0,20,40,60"))))->toBe(`image("myimage.webp#xywh=0,20,40,60")`);
    expect(CssString.Data.image(Css.image(Css.url("myimage.png"))))->toBe(`image(url("myimage.png"))`);
    expect(CssString.Data.image(Css.image(Css.rgba(0, 0, 0, 0.25))))->toBe("image(rgba(0, 0, 0, 0.25))");
    expect(CssString.Data.image(Css.image(~color=Css.rgba(0, 0, 0, 0.25), #red)))->toBe("image(red)");
    expect(CssString.Data.image(Css.image(~dir=#ltr, Css.src("myimage.png"))))->toBe(`image(ltr "myimage.png")`);
    expect(CssString.Data.image(Css.image(~dir=#ltr, ~color=#red, Css.src("myimage.png"))))->toBe(`image(ltr "myimage.png", red)`);
  });

  test("bgSize", (.) => {
    expect(CssString.Data.bgSize(#cover))->toBe("cover");
    expect(CssString.Data.bgSize(Css.px(24)))->toBe("24px");
    expect(CssString.Data.bgSize(Css.bgSize2(#auto, Css.px(24))))->toBe("auto 24px");
    expect(CssString.Data.bgSize(Css.bgSize2(Css.px(24), Css.px(24))))->toBe("24px 24px");
  });

  test("position", (.) => {
    expect(CssString.Data.position(#center))->toBe("center");
    expect(CssString.Data.position(Css.px(20)))->toBe("20px");
    expect(CssString.Data.position(Css.position2(#left, #top)))->toBe("left top");
    expect(CssString.Data.position(Css.position3(#left, #top, Css.pct(10.))))->toBe("left top 10%");
    expect(CssString.Data.position(Css.position3(#left, Css.pct(20.), #bottom)))->toBe("left 20% bottom");
    expect(CssString.Data.position(Css.position4(#right, Css.pct(35.), #bottom, Css.pct(45.))))
    ->toBe("right 35% bottom 45%");
  });

  test("background", (.) => {
    expect(CssString.Data.bg(#red))->toBe("red");
    expect(CssString.Data.bg(Css.rgb(255, 255, 255)))->toBe("rgb(255, 255, 255)");
    expect(CssString.Data.bg(~color=#red, Css.rgb(255, 255, 255)))->toBe("rgb(255, 255, 255)");
    expect(CssString.Data.bg(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
    expect(CssString.Data.bg(~repeat=#repeatY, Css.url("test.jpg")))
    ->toBe(`url("test.jpg") repeat-y`)
    expect(CssString.Data.bg(~origin=#borderBox, #red))
    ->toBe("red border-box");
    expect(CssString.Data.bg(~origin=#borderBox, ~clip=#paddingBox, #red))
    ->toBe("red border-box padding-box");
    expect(CssString.Data.bg(~clip=#paddingBox, #red))
    ->toBe("red");
    expect(CssString.Data.bg(~repeat=#noRepeat, ~position=#center, ~size=Css.pct(80.), Css.url("../img/image.png")))
    ->toBe(`url("../img/image.png") center / 80% no-repeat`);
    expect(CssString.Data.bg(~repeat=#noRepeat, ~size=Css.pct(80.), Css.url("../img/image.png")))
    ->toBe(`url("../img/image.png") no-repeat`);
    expect(CssString.Data.bgLayer(#red))->toBe("red");
    expect(CssString.Data.bgLayer(Css.url("myimage.png")))->toBe(`url("myimage.png")`);
    expect(CssString.Data.bgLayer(Css.bgLayer(~repeat=#repeatY, Css.url("test.jpg"))))->toBe(`url("test.jpg") repeat-y`);
    expect(CssString.Data.bgLayer(Css.bgLayer(~repeat=#noRepeat, ~position=#center, ~size=Css.pct(80.), Css.url("../img/image.png"))))
    ->toBe(`url("../img/image.png") center / 80% no-repeat`);
  });

  test("margin", (.) => {
    expect(CssString.Data.margin(Css.px(10)))->toBe("10px");
    expect(CssString.Data.margin(#auto))->toBe("auto");
    expect(CssString.Data.margin(Css.pct(20.)))->toBe("20%");
    expect(CssString.Data.margin_global(Css.px(24)))->toBe("24px");
    expect(CssString.Data.margin_global(#initial))->toBe("initial");
  });

  test("padding", (.) => {
    expect(CssString.Data.padding(Css.px(10)))->toBe("10px");
    expect(CssString.Data.padding(Css.pct(20.)))->toBe("20%");
    expect(CssString.Data.padding_global(Css.px(24)))->toBe("24px");
    expect(CssString.Data.padding_global(#initial))->toBe("initial");
  });

  test("fontFamily", (.) => {
    expect(CssString.Data.fontFamily(#Family("Goudy Bookletter 1911")))
    ->toBe(`"Goudy Bookletter 1911"`);
    expect(CssString.Data.fontFamily(#serif))
    ->toBe("serif");
    expect(CssString.Data.fontFamily(#sansSerif))
    ->toBe("sans-serif");
    expect(CssString.Data.fontFamily_global(#initial))
    ->toBe("initial");
    expect(CssString.Data.fontFamily_global(#Family("Gill Sans Extrabold")))
    ->toBe(`"Gill Sans Extrabold"`);
  });
});

describe("property", (.) => {
  test("background", (.) => {
    expect(CssString.Property.background(#initial))
    ->toBe("initial");
    expect(CssString.Property.background(~color=#red, #initial))
    ->toBe("initial");
    expect(CssString.Property.background(#red))
    ->toBe("red");
    expect(CssString.Property.background(Css.rgb(255, 255, 255)))
    ->toBe("rgb(255, 255, 255)");
    expect(CssString.Property.background(~repeat=#repeatY, Css.url("test.jpg")))
    ->toBe(`url("test.jpg") repeat-y`);
    expect(CssString.Property.background2(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255, 0, 0, 0.8), Css.linearColorStop2(Css.rgba(255, 0, 0, 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0, 255, 0, 0.8), Css.linearColorStop2(Css.rgba(0, 255, 0, 0.), Css.pct(70.71))),
    ))
    ->toBe("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)");
    expect(CssString.Property.background3(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255, 0, 0, 0.8), Css.linearColorStop2(Css.rgba(255, 0, 0, 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0, 255, 0, 0.8), Css.linearColorStop2(Css.rgba(0, 255, 0, 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255, 0, 0, 0.8), Css.linearColorStop2(Css.rgba(255, 0, 0, 0.), Css.pct(70.71))),
    ))
    ->toBe("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)");
    expect(CssString.Property.background4(
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255, 0, 0, 0.8), Css.linearColorStop2(Css.rgba(255, 0, 0, 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0, 255, 0, 0.8), Css.linearColorStop2(Css.rgba(0, 255, 0, 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(217.), Css.rgba(255, 0, 0, 0.8), Css.linearColorStop2(Css.rgba(255, 0, 0, 0.), Css.pct(70.71))),
      Css.linearGradient2(~angle=Css.deg(127.), Css.rgba(0, 255, 0, 0.8), Css.linearColorStop2(Css.rgba(0, 255, 0, 0.), Css.pct(70.71))),
    ))
    ->toBe("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)");
    expect(CssString.Property.background4(
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
      Css.bgLayer(~repeat=#repeat, Css.url("myimage.png")),
    ))
    ->toBe(`url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat, url("myimage.png") repeat`);
  });

  test("backgroundAttachment", (.) => {
    expect(CssString.Property.backgroundAttachment(#scroll))
    ->toBe("scroll");
    expect(CssString.Property.backgroundAttachment2(#scroll, #fixed))
    ->toBe("scroll, fixed");
    expect(CssString.Property.backgroundAttachment3(#scroll, #fixed, #fixed))
    ->toBe("scroll, fixed, fixed");
    expect(CssString.Property.backgroundAttachment4(#scroll, #fixed, #fixed, #local))
    ->toBe("scroll, fixed, fixed, local");
  });

  test("backgroundColor", (.) => {
    expect(CssString.Property.backgroundColor(Css.rgb(200, 200, 200)))
    ->toBe("rgb(200, 200, 200)");
  });

  test("backgroundImage", (.) => {
    expect(CssString.Property.backgroundImage(Css.url("image.png")))
    ->toBe(`url("image.png")`);
    expect(CssString.Property.backgroundImage2(Css.url("image.png"), Css.image(Css.url("myimage.jpg"))))
    ->toBe(`url("image.png"), image(url("myimage.jpg"))`);
    expect(CssString.Property.backgroundImage3(Css.url("image.png"), Css.image(Css.url("myimage.jpg")), Css.linearGradient(#red)))
    ->toBe(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red)`);
    expect(CssString.Property.backgroundImage4(Css.url("image.png"), Css.image(Css.url("myimage.jpg")), Css.linearGradient(#red), Css.radialGradient(#blue)))
    ->toBe(`url("image.png"), image(url("myimage.jpg")), linear-gradient(red), radial-gradient(blue)`);
  });

  test("backgroundPosition", (.) => {
    expect(CssString.Property.backgroundPosition(Css.px(10)))
    ->toBe("10px");
    expect(CssString.Property.backgroundPosition2(Css.px(10), Css.position2(#center, #bottom)))
    ->toBe("10px, center bottom");
    expect(CssString.Property.backgroundPosition3(Css.px(10), Css.position2(#center, #bottom), #center))
    ->toBe("10px, center bottom, center");
    expect(CssString.Property.backgroundPosition4(Css.px(10), Css.position2(#center, #bottom), Css.pct(10.), Css.position4(#left, Css.px(10), #top, Css.pct(10.))))
    ->toBe("10px, center bottom, 10%, left 10px top 10%");
  });

  test("backgroundStyle", (.) => {
    expect(CssString.Property.backgroundStyle(#repeatX))
    ->toBe("repeat-x");
    expect(CssString.Property.backgroundStyle2(#repeatX, #repeat__repeat))
    ->toBe("repeat-x, repeat repeat");
    expect(CssString.Property.backgroundStyle3(#repeatX, #repeat__repeat, #noRepeat))
    ->toBe("repeat-x, repeat repeat, no-repeat");
    expect(CssString.Property.backgroundStyle4(#repeatX, #repeat__repeat, #noRepeat, #space))
    ->toBe("repeat-x, repeat repeat, no-repeat, space");
  });

  test("border", (.) => {
    expect(CssString.Property.border(#solid))
    ->toBe("solid");
    expect(CssString.Property.border(~color=#red, #dashed))
    ->toBe("red dashed");
    expect(CssString.Property.border(~width=Css.rem(1.0), #solid))
    ->toBe("1rem solid");
    expect(CssString.Property.border(~width=#thick, ~color=Css.hexColor("32a1ce"), #double))
    ->toBe("thick #32a1ce double");
    expect(CssString.Property.border(~width=Css.mm(4.), ~color=Css.rgba(170, 50, 220, 0.6), #ridge))
    ->toBe("4mm rgba(170, 50, 220, 0.6) ridge");
  });

  test("borderColor", (.) => {
    expect(CssString.Property.borderColor(#red))
    ->toBe("red");
    expect(CssString.Property.borderColor2(~tb=#red, ~lr=Css.hexColor("000000ff")))
    ->toBe("red #000000ff");
    expect(CssString.Property.borderColor3(~top=#red, ~lr=Css.rgb(255, 255, 255), ~bottom=Css.hsl(360, Css.pct(100.), Css.pct(50.))))
    ->toBe("red rgb(255, 255, 255) hsl(360, 100%, 50%)");
    expect(CssString.Property.borderColor4(~bottom=#red, ~top=#blue, ~left=Css.rgb(255, 255, 255), ~right=Css.rgba(0, 0, 0, 0.5)))
    ->toBe("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)");
  });

  test("borderStyle", (.) => {
    expect(CssString.Property.borderStyle(#solid))
    ->toBe("solid");
    expect(CssString.Property.borderStyle2(~tb=#solid, ~lr=#dashed))
    ->toBe("solid dashed");
    expect(CssString.Property.borderStyle3(~top=#solid, ~lr=#dashed, ~bottom=#dotted))
    ->toBe("solid dashed dotted");
    expect(CssString.Property.borderStyle4(~bottom=#dotted, ~top=#dashed, ~left=#inset, ~right=#solid))
    ->toBe("dashed solid dotted inset");
  });

  test("borderWidth", (.) => {
    expect(CssString.Property.borderWidth(Css.px(1)))
    ->toBe("1px");
    expect(CssString.Property.borderWidth2(~tb=#thin, ~lr=#medium))
    ->toBe("thin medium");
    expect(CssString.Property.borderWidth3(~top=#thin, ~lr=#medium, ~bottom=Css.px(2)))
    ->toBe("thin medium 2px");
    expect(CssString.Property.borderWidth4(~bottom=#thin, ~top=#medium, ~left=Css.px(4), ~right=Css.px(2)))
    ->toBe("medium 2px thin 4px");
  });

  test("cursor", (.) => {
    expect(CssString.Property.cursor(#auto))
    ->toBe("auto");
    expect(CssString.Property.cursor(#initial))
    ->toBe("initial");
    expect(CssString.Property.cursor1(Css.url("image.png"), #default))
    ->toBe(`url("image.png"), default`);
    expect(CssString.Property.cursor2(Css.url("image.png"), Css.url("image2.png"), #default))
    ->toBe(`url("image.png"), url("image2.png"), default`);
    expect(CssString.Property.cursor3(Css.url("image.png"), Css.url("image2.png"), Css.url("image3.png"), #default))
    ->toBe(`url("image.png"), url("image2.png"), url("image3.png"), default`);
    expect(CssString.Property.cursor4(Css.url("image.png"), Css.url("image2.png"), Css.url("image3.png"), Css.url("image4.png"), #default))
    ->toBe(`url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), default`);
  });

  test("FontFamily", (.) => {
    expect(CssString.Property.fontFamily(#initial))
    ->toBe("initial");
    expect(CssString.Property.fontFamily(#sansSerif))
    ->toBe("sans-serif");
    expect(CssString.Property.fontFamily(#Family("Gill Sans Extrabold")))
    ->toBe(`"Gill Sans Extrabold"`);
    expect(CssString.Property.fontFamily2(#Family("Gill Sans Extrabold"), #sansSerif))
    ->toBe(`"Gill Sans Extrabold", sans-serif`);
    expect(CssString.Property.fontFamily3(#Family("Roboto"), #Family("Helvetica"), #sansSerif))
    ->toBe(`"Roboto", "Helvetica", sans-serif`);
    expect(CssString.Property.fontFamily4(#Family("Roboto"), #Family("Helvetica"), #Family("Arial"), #sansSerif))
    ->toBe(`"Roboto", "Helvetica", "Arial", sans-serif`);
  });

  test("fontWeight", (.) => {
    expect(CssString.Property.fontWeight(#initial))
    ->toBe("initial");
    expect(CssString.Property.fontWeight(#bold))
    ->toBe("bold");
  });

  test("margin", (.) => {
    expect(CssString.Property.margin(Css.px(24)))
    ->toBe("24px");
    expect(CssString.Property.margin(#initial))
    ->toBe("initial");
    expect(CssString.Property.margin2(~tb=Css.rem(2.), ~lr=Css.rem(4.)))
    ->toBe("2rem 4rem");
    expect(CssString.Property.margin3(~top=Css.px(10), ~lr=Css.px(24), ~bottom=Css.px(40)))
    ->toBe("10px 24px 40px");
    expect(CssString.Property.margin4(~top=Css.px(20), ~bottom=Css.px(20), ~left=Css.px(40), ~right=Css.px(40)))
    ->toBe("20px 40px 20px 40px");
  });

  test("padding", (.) => {
    expect(CssString.Property.padding(Css.px(24)))
    ->toBe("24px");
    expect(CssString.Property.padding(#initial))
    ->toBe("initial");
    expect(CssString.Property.padding2(~tb=Css.rem(2.), ~lr=Css.rem(4.)))
    ->toBe("2rem 4rem");
    expect(CssString.Property.padding3(~top=Css.px(10), ~lr=Css.px(24), ~bottom=Css.px(40)))
    ->toBe("10px 24px 40px");
    expect(CssString.Property.padding4(~top=Css.px(20), ~bottom=Css.px(20), ~left=Css.px(40), ~right=Css.px(40)))
    ->toBe("20px 40px 20px 40px");
  });
});