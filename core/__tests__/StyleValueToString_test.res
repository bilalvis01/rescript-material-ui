open Jest;
open StyleValueToString;

test("number", (.) => {
  expect(num(1.))->toBe("1");
  expect(number(StyleValue.num(1.)))->toBe("1");
});

test("percentage", (.) => {
  expect(pct(1.))->toBe("1%");
  expect(percentage(StyleValue.pct(1.)))->toBe("1%");
})

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
  expect(length(StyleValue.mm(1.)))->toBe("1mm");
  expect(length(StyleValue.cm(1.)))->toBe("1cm");
});

test("angle", (.) => {
  expect(deg(1.))->toBe("1deg");
  expect(grad(1.))->toBe("1grad");
  expect(rad(1.))->toBe("1rad");
  expect(turn(1.))->toBe("1turn");
  expect(angle(StyleValue.deg(1.)))->toBe("1deg");
  expect(angle(StyleValue.grad(1.)))->toBe("1grad");
}); 

test("color", (.) => {
  expect(hue(StyleValue.deg(1.)))->toBe("1deg");
  expect(hue(StyleValue.num(1.)))->toBe("1");
  expect(alpha(StyleValue.pct(1.)))->toBe("1%");
  expect(alpha(StyleValue.num(1.)))->toBe("1");
  expect(rgbValue(StyleValue.pct(1.)))->toBe("1%");
  expect(rgbValue(StyleValue.num(1.)))->toBe("1");
  expect(hsl(StyleValue.num(1.), StyleValue.pct(10.), StyleValue.pct(10.)))
    ->toBe("hsl(1, 10%, 10%)");
  expect(hsla(StyleValue.num(1.), StyleValue.pct(10.), StyleValue.pct(10.), StyleValue.num(1.)))
    ->toBe("hsla(1, 10%, 10%, 1)");
  expect(rgb(StyleValue.num(1.), StyleValue.num(1.), StyleValue.pct(10.)))
    ->toBe("rgb(1, 1, 10%)");
  expect(rgba(StyleValue.num(1.), StyleValue.num(1.), StyleValue.pct(10.), StyleValue.num(10.)))
    ->toBe("rgba(1, 1, 10%, 10)");
  expect(rgbHex("000000"))->toBe("#000000");
  expect(color(StyleValue.rgbHex("000000")))->toBe("#000000");
  expect(color(StyleValue.rgb(StyleValue.num(1.), StyleValue.num(1.8), StyleValue.pct(10.))))
    ->toBe("rgb(1, 1.8, 10%)");
});

test("lineWidth", (.) => {
  expect(lineWidth(#thick))->toBe("thick");
  expect(lineWidth(StyleValue.mm(10.)))->toBe("10mm");
});

test("borderColor", (.) => {
  expect(borderColor(#revert))->toBe("revert");
  expect(borderColor(StyleValue.hsl(StyleValue.num(1.), StyleValue.pct(10.), StyleValue.pct(10.))))
    ->toBe("hsl(1, 10%, 10%)");
});