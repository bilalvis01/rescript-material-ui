open CssValueHelper;
open Jest;

module Margin = CssMargin;
module MarginSide = {
  type t;
  include CssMarginSide.MakeValue({
    type t = t;
  });
};

test("margin", (.) => {
  expect(Margin.value(px(24)))
  ->toBe(Margin.string("24px"));
  expect(Margin.value(#initial))
  ->toBe(Margin.string("initial"));
  expect(Margin.value2(~tb=rem(2.), ~lr=rem(4.)))
  ->toBe(Margin.string("2rem 4rem"));
  expect(Margin.value3(~top=px(10), ~lr=px(24), ~bottom=px(40)))
  ->toBe(Margin.string("10px 24px 40px"));
  expect(Margin.value4(~top=px(20), ~bottom=px(20), ~left=px(40), ~right=px(40)))
  ->toBe(Margin.string("20px 40px 20px 40px"));
  expect(MarginSide.value(px(24)))
  ->toBe(MarginSide.string("24px"));
  expect(MarginSide.value(#initial))
  ->toBe(MarginSide.string("initial"));
});