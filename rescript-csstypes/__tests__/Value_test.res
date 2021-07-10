open Value;
open Jest;

test("border", (.) => {
  expect(CssPropertyValue.border2(#dashed, #red))
    ->toBe(CssPropertyValue.string("dashed red"));
  expect(CssPropertyValue.border2(#solid, rem(1.0)))
    ->toBe(CssPropertyValue.string("solid 1rem"));
  expect(CssPropertyValue.border3(#thick, #double, rgbHex("32a1ce")))
    ->toBe(CssPropertyValue.string("thick double #32a1ce"));
  expect(CssPropertyValue.border3(mm(4.), #ridge, rgba(num(170.), num(50.), num(220.), num(0.6))))
    ->toBe(CssPropertyValue.string("4mm ridge rgba(170, 50, 220, 0.6)"));
});