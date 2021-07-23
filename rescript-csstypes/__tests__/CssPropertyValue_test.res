open CssPropertyValue;
open Jest;

test("border", (.) => {
  expect(border2(~style=#dashed, #red))
    ->toBe(borderString("dashed red"));
  expect(border2(~style=#solid, Css.rem(1.0)))
    ->toBe(borderString("solid 1rem"));
  expect(border3(~width=#thick, ~style=#double, ~color=Css.rgbX("32a1ce")))
    ->toBe(borderString("thick double #32a1ce"));
  expect(border3(~width=Css.mm(4.), ~style=#ridge, ~color=Css.rgba(Css.num(170.), Css.num(50.), Css.num(220.), Css.num(0.6))))
    ->toBe(borderString("4mm ridge rgba(170, 50, 220, 0.6)"));
});