open CssValueHelper;
open Jest;

module Padding = {
  type t;
  include CssPadding.Make({
    type t = t;
  });
};

module PaddingTop = {
  type t;
  include CssPaddingSide.Make({
    type t = t;
  });
};

test("padding", (.) => {
  expect(Padding.value(px(24.)))
  ->toBe(Padding.string("24px"));
  expect(Padding.value(#initial))
  ->toBe(Padding.string("initial"));
  expect(Padding.value2(~tb=rem(2.), ~lr=rem(4.)))
  ->toBe(Padding.string("2rem 4rem"));
  expect(Padding.value3(~top=px(10.), ~lr=px(24.), ~bottom=px(40.)))
  ->toBe(Padding.string("10px 24px 40px"));
  expect(Padding.value4(~top=px(20.), ~bottom=px(20.), ~left=px(40.), ~right=px(40.)))
  ->toBe(Padding.string("20px 40px 20px 40px"));
  expect(PaddingTop.value(px(24.)))
  ->toBe(PaddingTop.string("24px"));
  expect(PaddingTop.value(#initial))
  ->toBe(PaddingTop.string("initial"));
});