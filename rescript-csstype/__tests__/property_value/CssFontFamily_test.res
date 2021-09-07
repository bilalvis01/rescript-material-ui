open Jest;

module FontFamily = {
  type t;
  include CssFontFamily.Make({
    type t = t;
  });
};

test("FontFamily", (.) => {
  expect(FontFamily.value(#initial))
  ->toBe(FontFamily.string("initial"));
  expect(FontFamily.value(#sansSerif))
  ->toBe(FontFamily.string("sans-serif"));
  expect(FontFamily.value(#Family("Gill Sans Extrabold")))
  ->toBe(FontFamily.string(`"Gill Sans Extrabold"`));
  expect(FontFamily.value2(#Family("Gill Sans Extrabold"), #sansSerif))
  ->toBe(FontFamily.string(`"Gill Sans Extrabold", sans-serif`));
  expect(FontFamily.value3(#Family("Roboto"), #Family("Helvetica"), #sansSerif))
  ->toBe(FontFamily.string(`"Roboto", "Helvetica", sans-serif`));
  expect(FontFamily.value4(#Family("Roboto"), #Family("Helvetica"), #Family("Arial"), #sansSerif))
  ->toBe(FontFamily.string(`"Roboto", "Helvetica", "Arial", sans-serif`));
});