open Value
open Jest;

test("border", (.) => {
  expect(Border.make2(#dashed, #red))
    ->toBe(string("dashed red"));
  expect(Border.make2(#solid, rem(1.0)))
    ->toBe(string("solid 1rem"));
  expect(Border.make3(#thick, #double, rgbHex("32a1ce")))
    ->toBe(string("thick double #32a1ce"));
  expect(Border.make3(mm(4.), #ridge, rgba(num(170.), num(50.), num(220.), num(0.6))))
    ->toBe(string("4mm ridge rgba(170, 50, 220, 0.6)"));
});