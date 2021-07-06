open StyleValue;
open Jest;

test("border", (.) => {
  expect(border2(~style=#dashed, #red))
    ->toBe(borderString("dashed red"));
  expect(border2(~style=#solid, rem(1.0)))
    ->toBe(borderString("solid 1rem"));
  expect(border3(~width=#thick, ~style=#double, ~color=rgbHex("32a1ce")))
    ->toBe(borderString("thick double #32a1ce"));
  expect(border3(~width=mm(4.), ~style=#ridge, ~color=rgba(num(170.), num(50.), num(220.), num(0.6))))
    ->toBe(borderString("4mm ridge rgba(170, 50, 220, 0.6)"));
});