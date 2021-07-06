open StyleProperty;
open Jest;


test("border", (.) => {
  expect(border(#solid))
    ->toEqual(make("border", "solid"));
  expect(border(StyleValue.border2(~style=#dashed, #red)))
    ->toEqual(make("border", "dashed red"));
  expect(border(StyleValue.border3(~width=#thick, ~style=#double, ~color=StyleValue.rgbHex("32a1ce"))))
    ->toEqual(make("border", "thick double #32a1ce"));
});

test("borderString", (.) => {
  expect(borderString("solid"))
    ->toEqual(make("border", "solid"));
  expect(borderString("dashed red"))
    ->toEqual(make("border", "dashed red"));
  expect(borderString("thick double #32a1ce"))
    ->toEqual(make("border", "thick double #32a1ce"));
});

test("border2", (.) => {
  expect(border2(~style=#dashed, #red))
    ->toEqual(make("border", "dashed red"));
});

test("borderString", (.) => {
  expect(border3(~width=#thick, ~style=#double, ~color=StyleValue.rgbHex("32a1ce")))
    ->toEqual(make("border", "thick double #32a1ce"));
});

test("borderTop", (.) => {
  expect(borderTop(#solid))
    ->toEqual(make("borderTop", "solid"));
  expect(borderTop(StyleValue.border2(~style=#dashed, #red)))
    ->toEqual(make("borderTop", "dashed red"));
  expect(borderTop(StyleValue.border3(~width=#thick, ~style=#double, ~color=StyleValue.rgbHex("32a1ce"))))
    ->toEqual(make("borderTop", "thick double #32a1ce"));
});

test("borderLeft", (.) => {
  expect(borderLeft(#solid))
    ->toEqual(make("borderLeft", "solid"));
  expect(borderLeft(StyleValue.border2(~style=#dashed, #red)))
    ->toEqual(make("borderLeft", "dashed red"));
  expect(borderLeft(StyleValue.border3(~width=#thick, ~style=#double, ~color=StyleValue.rgbHex("32a1ce"))))
    ->toEqual(make("borderLeft", "thick double #32a1ce"));
});

test("borderRight", (.) => {
  expect(borderRight(#solid))
    ->toEqual(make("borderRight", "solid"));
  expect(borderRight(StyleValue.border2(~style=#dashed, #red)))
    ->toEqual(make("borderRight", "dashed red"));
  expect(borderRight(StyleValue.border3(~width=#thick, ~style=#double, ~color=StyleValue.rgbHex("32a1ce"))))
    ->toEqual(make("borderRight", "thick double #32a1ce"));
});

test("borderBottom", (.) => {
  expect(borderBottom(#solid))
    ->toEqual(make("borderBottom", "solid"));
  expect(borderBottom(StyleValue.border2(~style=#dashed, #red)))
    ->toEqual(make("borderBottom", "dashed red"));
  expect(borderBottom(StyleValue.border3(~width=#thick, ~style=#double, ~color=StyleValue.rgbHex("32a1ce"))))
    ->toEqual(make("borderBottom", "thick double #32a1ce"));
});