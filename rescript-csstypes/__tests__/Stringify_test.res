open Jest;
open Stringify;

test("number", (.) => {
  expect(num(1.))->toBe("1");
  expect(number(Value.num(1.)))->toBe("1");
});

test("integer", (.) => {
  expect(intg(1))->toBe("1");
  expect(integer(Value.int(1)))->toBe("1");
});

test("percentage", (.) => {
  expect(pct(1.))->toBe("1%");
  expect(percentage(Value.pct(1.)))->toBe("1%");
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
  expect(length(Value.mm(1.)))->toBe("1mm");
  expect(length(Value.cm(1.)))->toBe("1cm");
});

test("angle", (.) => {
  expect(deg(1.))->toBe("1deg");
  expect(grad(1.))->toBe("1grad");
  expect(rad(1.))->toBe("1rad");
  expect(turn(1.))->toBe("1turn");
  expect(angle(Value.deg(1.)))->toBe("1deg");
  expect(angle(Value.grad(1.)))->toBe("1grad");
}); 

test("color", (.) => {
  expect(hue(Value.deg(1.)))->toBe("1deg");
  expect(hue(Value.num(1.)))->toBe("1");
  expect(alpha(Value.pct(1.)))->toBe("1%");
  expect(alpha(Value.num(1.)))->toBe("1");
  expect(rgbParam(Value.pct(1.)))->toBe("1%");
  expect(rgbParam(Value.num(1.)))->toBe("1");
  expect(hsl(Value.num(1.), Value.pct(10.), Value.pct(10.)))
    ->toBe("hsl(1, 10%, 10%)");
  expect(hsla(Value.num(1.), Value.pct(10.), Value.pct(10.), Value.num(1.)))
    ->toBe("hsla(1, 10%, 10%, 1)");
  expect(rgb(Value.num(1.), Value.num(1.), Value.pct(10.)))
    ->toBe("rgb(1, 1, 10%)");
  expect(rgba(Value.num(1.), Value.num(1.), Value.pct(10.), Value.num(10.)))
    ->toBe("rgba(1, 1, 10%, 10)");
  expect(rgbHex("000000"))->toBe("#000000");
  expect(color(Value.rgbHex("000000")))->toBe("#000000");
  expect(color(Value.rgb(Value.num(1.), Value.num(1.8), Value.pct(10.))))
    ->toBe("rgb(1, 1.8, 10%)");
});

test("lineWidth", (.) => {
  expect(lineWidth(#thick))->toBe("thick");
  expect(lineWidth(Value.mm(10.)))->toBe("10mm");
});

test("borderColor", (.) => {
  expect(borderColor(#revert))->toBe("revert");
  expect(borderColor(Value.hsl(Value.num(1.), Value.pct(10.), Value.pct(10.))))
    ->toBe("hsl(1, 10%, 10%)");
});