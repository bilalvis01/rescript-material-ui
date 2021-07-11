open Jest;
open Stringify;

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

test("borderColor", (.) => {
  expect(borderColor(#revert))->toBe("revert");
  expect(borderColor(Css.hsl(Css.num(1.), Css.pct(10.), Css.pct(10.))))
    ->toBe("hsl(1, 10%, 10%)");
});