open CssValueHelper;
open Jest;

module Margin = {
  type t;
  include CssMargin.Make({
    type t = t;
  });
};

module MarginTop = {
  type t;
  include CssMarginSide.Make({
    type t = t;
  });
};

test("margin", (.) => {
  expect(Margin.value(px(24.)))
  ->toBe(Margin.string("24px"));
  expect(Margin.value(#initial))
  ->toBe(Margin.string("initial"));
  expect(Margin.value2(~tb=rem(2.), ~lr=rem(4.)))
  ->toBe(Margin.string("2rem 4rem"));
  expect(Margin.value3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toBe(Margin.string("10px 24px 40px"));
  expect(Margin.value4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toBe(Margin.string("20px 40px 20px 40px"));
  expect(MarginTop.value(px(24.)))
  ->toBe(MarginTop.string("24px"));
  expect(MarginTop.value(#initial))
  ->toBe(MarginTop.string("initial"));
});