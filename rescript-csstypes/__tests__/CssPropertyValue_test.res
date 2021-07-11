open CssPropertyValue;
open CssValue;
open Jest;

test("border", (.) => {
  expect(border2(#dashed, #red))
    ->toBe(string("dashed red"));
  expect(border2(#solid, rem(1.0)))
    ->toBe(string("solid 1rem"));
  expect(border3(#thick, #double, rgbHex("32a1ce")))
    ->toBe(string("thick double #32a1ce"));
  expect(border3(mm(4.), #ridge, rgba(num(170.), num(50.), num(220.), num(0.6))))
    ->toBe(string("4mm ridge rgba(170, 50, 220, 0.6)"));
});