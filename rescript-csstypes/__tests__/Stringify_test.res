open Jest;
open Stringify;

test("number", (.) => {
  expect(num(1.))->toBe("1");
  expect(number(CssValue.num(1.)))->toBe("1");
});

test("integer", (.) => {
  expect(int(1))->toBe("1");
  expect(integer(CssValue.int(1)))->toBe("1");
});

test("percentage", (.) => {
  expect(pct(1.))->toBe("1%");
  expect(percentage(CssValue.pct(1.)))->toBe("1%");
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
  expect(length(CssValue.mm(1.)))->toBe("1mm");
  expect(length(CssValue.cm(1.)))->toBe("1cm");
});

test("angle", (.) => {
  expect(deg(1.))->toBe("1deg");
  expect(grad(1.))->toBe("1grad");
  expect(rad(1.))->toBe("1rad");
  expect(turn(1.))->toBe("1turn");
  expect(angle(CssValue.deg(1.)))->toBe("1deg");
  expect(angle(CssValue.grad(1.)))->toBe("1grad");
}); 

test("color", (.) => {
  expect(hue(CssValue.deg(1.)))->toBe("1deg");
  expect(hue(CssValue.num(1.)))->toBe("1");
  expect(alpha(CssValue.pct(1.)))->toBe("1%");
  expect(alpha(CssValue.num(1.)))->toBe("1");
  expect(rgbParam(CssValue.pct(1.)))->toBe("1%");
  expect(rgbParam(CssValue.num(1.)))->toBe("1");
  expect(hsl(CssValue.num(1.), CssValue.pct(10.), CssValue.pct(10.)))
    ->toBe("hsl(1, 10%, 10%)");
  expect(hsla(CssValue.num(1.), CssValue.pct(10.), CssValue.pct(10.), CssValue.num(1.)))
    ->toBe("hsla(1, 10%, 10%, 1)");
  expect(rgb(CssValue.num(1.), CssValue.num(1.), CssValue.pct(10.)))
    ->toBe("rgb(1, 1, 10%)");
  expect(rgba(CssValue.num(1.), CssValue.num(1.), CssValue.pct(10.), CssValue.num(10.)))
    ->toBe("rgba(1, 1, 10%, 10)");
  expect(rgbHex("000000"))->toBe("#000000");
  expect(color(CssValue.rgbHex("000000")))->toBe("#000000");
  expect(color(CssValue.rgb(CssValue.num(1.), CssValue.num(1.8), CssValue.pct(10.))))
    ->toBe("rgb(1, 1.8, 10%)");
});

test("lineWidth", (.) => {
  expect(lineWidth(#thick))->toBe("thick");
  expect(lineWidth(CssValue.mm(10.)))->toBe("10mm");
});

test("borderColor", (.) => {
  expect(borderColor(#revert))->toBe("revert");
  expect(borderColor(CssValue.hsl(CssValue.num(1.), CssValue.pct(10.), CssValue.pct(10.))))
    ->toBe("hsl(1, 10%, 10%)");
});