open CssPropertyValue;
open Jest;

test("border", (.) => {
  expect(border2(#dashed, #red))
    ->toBe(string("dashed red"));
  expect(border2(#solid, Css.rem(1.0)))
    ->toBe(string("solid 1rem"));
  expect(border3(~width=#thick, ~style=#double, ~color=Css.rgbx("32a1ce")))
    ->toBe(string("thick double #32a1ce"));
  expect(border3(~width=Css.mm(4.), ~style=#ridge, ~color=Css.rgba(Css.num(170.), Css.num(50.), Css.num(220.), Css.num(0.6))))
    ->toBe(string("4mm ridge rgba(170, 50, 220, 0.6)"));
});