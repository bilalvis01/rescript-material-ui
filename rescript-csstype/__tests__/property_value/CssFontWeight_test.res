open Jest;

module FontWeight = {
  type t;
  include CssFontWeight.Make({
    type t = t;
  });
};

test("fontWeight", (.) => {
  expect(FontWeight.value(#initial))
  ->toBe(FontWeight.string("initial"));
  expect(FontWeight.value(#bold))
  ->toBe(FontWeight.string("bold"));
});