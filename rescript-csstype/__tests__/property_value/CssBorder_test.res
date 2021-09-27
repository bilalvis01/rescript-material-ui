open CssValueHelper;
open Jest;

module Border = CssBorder;
module BorderColor = CssBorderColor;
module BorderStyle = CssBorderStyle;
module BorderWidth = CssBorderWidth;

test("border", (.) => {
  expect(Border.value(#solid))
  ->toBe(Border.string("solid"));
  expect(Border.value(~color=#red, #dashed))
  ->toBe(Border.string("red dashed"));
  expect(Border.value(~width=rem(1.0), #solid))
  ->toBe(Border.string("1rem solid"));
  expect(Border.value(~width=#thick, ~color=hexColor("32a1ce"), #double))
  ->toBe(Border.string("thick #32a1ce double"));
  expect(Border.value(~width=mm(4.), ~color=rgba(170., 50., 220., 0.6), #ridge))
  ->toBe(Border.string("4mm rgba(170, 50, 220, 0.6) ridge"));
});

test("borderColor", (.) => {
  expect(BorderColor.value(#red))
  ->toBe(BorderColor.string("red"));
  expect(BorderColor.value2(~tb=#red, ~lr=hexColor("000000ff")))
  ->toBe(BorderColor.string("red #000000ff"));
  expect(BorderColor.value3(~top=#red, ~lr=rgb(255., 255., 255.), ~bottom=hsl(deg(360.), pct(100.), pct(50.))))
  ->toBe(BorderColor.string("red rgb(255, 255, 255) hsl(360deg, 100%, 50%)"));
  expect(BorderColor.value4(~bottom=#red, ~top=#blue, ~left=rgb(255., 255., 255.), ~right=rgba(0., 0., 0., 0.5)))
  ->toBe(BorderColor.string("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)"));
});

test("borderStyle", (.) => {
  expect(BorderStyle.value(#solid))
  ->toBe(BorderStyle.string("solid"));
  expect(BorderStyle.value2(~tb=#solid, ~lr=#dashed))
  ->toBe(BorderStyle.string("solid dashed"));
  expect(BorderStyle.value3(~top=#solid, ~lr=#dashed, ~bottom=#dotted))
  ->toBe(BorderStyle.string("solid dashed dotted"));
  expect(BorderStyle.value4(~bottom=#dotted, ~top=#dashed, ~left=#inset, ~right=#solid))
  ->toBe(BorderStyle.string("dashed solid dotted inset"));
});

test("borderWidth", (.) => {
  expect(BorderWidth.value(px(1)))
  ->toBe(BorderWidth.string("1px"));
  expect(BorderWidth.value2(~tb=#thin, ~lr=#medium))
  ->toBe(BorderWidth.string("thin medium"));
  expect(BorderWidth.value3(~top=#thin, ~lr=#medium, ~bottom=px(2)))
  ->toBe(BorderWidth.string("thin medium 2px"));
  expect(BorderWidth.value4(~bottom=#thin, ~top=#medium, ~left=px(4), ~right=px(2)))
  ->toBe(BorderWidth.string("medium 2px thin 4px"));
});