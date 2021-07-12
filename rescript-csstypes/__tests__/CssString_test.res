open Jest;
open CssString;

/*
Numeric data types
*/
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

/*
Quantities data types
*/
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
})

/*
Combinations of types 
*/
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

/*
Color data types
*/
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
  expect(rgb(Css.num(1.), Css.num(1.), Css.pct(10.)))
    ->toBe("rgb(1, 1, 10%)");
  expect(rgba(Css.num(1.), Css.num(1.), Css.pct(10.), Css.num(10.)))
    ->toBe("rgba(1, 1, 10%, 10)");
  expect(rgbHex("000000"))->toBe("#000000");
  expect(color(Css.rgbHex("000000")))->toBe("#000000");
  expect(color(Css.rgb(Css.num(1.), Css.num(1.8), Css.pct(10.))))
    ->toBe("rgb(1, 1.8, 10%)");
});

test("lineWidth", (.) => {
  expect(lineWidth(#thick))->toBe("thick");
  expect(lineWidth(Css.mm(10.)))->toBe("10mm");
});