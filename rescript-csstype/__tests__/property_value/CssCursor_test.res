open CssValueHelper;
open Jest;

module Cursor = CssCursor;

test("cursor", (.) => {
  expect(Cursor.value(#auto))
  ->toBe(Cursor.string("auto"));
  expect(Cursor.value(#initial))
  ->toBe(Cursor.string("initial"));
  expect(Cursor.value1(url("image.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), default`));
  expect(Cursor.value2(url("image.png"), url("image2.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), url("image2.png"), default`));
  expect(Cursor.value3(url("image.png"), url("image2.png"), url("image3.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), url("image2.png"), url("image3.png"), default`));
  expect(Cursor.value4(url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), #default))
  ->toBe(Cursor.string(`url("image.png"), url("image2.png"), url("image3.png"), url("image4.png"), default`));
});