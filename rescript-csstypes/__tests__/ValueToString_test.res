open Jest;
open ValueToString;

test("number", (.) => {
  expect(num(1.))->toBe("1");
  expect(number(Value.Basic.num(1.)))->toBe("1");
});

test("integer", (.) => {
  expect(intg(1))->toBe("1");
  expect(integer(Value.Basic.int(1)))->toBe("1");
});

test("percentage", (.) => {
  expect(pct(1.))->toBe("1%");
  expect(percentage(Value.Basic.pct(1.)))->toBe("1%");
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
  expect(length(Value.Basic.mm(1.)))->toBe("1mm");
  expect(length(Value.Basic.cm(1.)))->toBe("1cm");
});

test("angle", (.) => {
  expect(deg(1.))->toBe("1deg");
  expect(grad(1.))->toBe("1grad");
  expect(rad(1.))->toBe("1rad");
  expect(turn(1.))->toBe("1turn");
  expect(angle(Value.Basic.deg(1.)))->toBe("1deg");
  expect(angle(Value.Basic.grad(1.)))->toBe("1grad");
}); 

test("color", (.) => {
  expect(hue(Value.Basic.deg(1.)))->toBe("1deg");
  expect(hue(Value.Basic.num(1.)))->toBe("1");
  expect(alpha(Value.Basic.pct(1.)))->toBe("1%");
  expect(alpha(Value.Basic.num(1.)))->toBe("1");
  expect(rgbValue(Value.Basic.pct(1.)))->toBe("1%");
  expect(rgbValue(Value.Basic.num(1.)))->toBe("1");
  expect(hsl(Value.Basic.num(1.), Value.Basic.pct(10.), Value.Basic.pct(10.)))
    ->toBe("hsl(1, 10%, 10%)");
  expect(hsla(Value.Basic.num(1.), Value.Basic.pct(10.), Value.Basic.pct(10.), Value.Basic.num(1.)))
    ->toBe("hsla(1, 10%, 10%, 1)");
  expect(rgb(Value.Basic.num(1.), Value.Basic.num(1.), Value.Basic.pct(10.)))
    ->toBe("rgb(1, 1, 10%)");
  expect(rgba(Value.Basic.num(1.), Value.Basic.num(1.), Value.Basic.pct(10.), Value.Basic.num(10.)))
    ->toBe("rgba(1, 1, 10%, 10)");
  expect(rgbHex("000000"))->toBe("#000000");
  expect(color(Value.Basic.rgbHex("000000")))->toBe("#000000");
  expect(color(Value.Basic.rgb(Value.Basic.num(1.), Value.Basic.num(1.8), Value.Basic.pct(10.))))
    ->toBe("rgb(1, 1.8, 10%)");
});

test("lineWidth", (.) => {
  expect(lineWidth(#thick))->toBe("thick");
  expect(lineWidth(Value.Basic.mm(10.)))->toBe("10mm");
});

test("borderColor", (.) => {
  expect(borderColor(#revert))->toBe("revert");
  expect(borderColor(Value.Basic.hsl(Value.Basic.num(1.), Value.Basic.pct(10.), Value.Basic.pct(10.))))
    ->toBe("hsl(1, 10%, 10%)");
});