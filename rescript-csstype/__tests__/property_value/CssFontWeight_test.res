open Jest;

module FontWeight = CssFontWeight;

test("fontWeight", (.) => {
  expect(FontWeight.value(#initial))
  ->toBe(FontWeight.string("initial"));
  expect(FontWeight.value(#bold))
  ->toBe(FontWeight.string("bold"));
});