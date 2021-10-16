open Jest;
open! Styles;

describe("default typography", (.) => {
  let typography = Theme.make(())->Theme.typography;
  
  test("htmlFontSize", (.) => {
    expect(typography->Typography.htmlFontSize)
    ->toBe(16.);
  });

  test("pxToRem", (.) => {
    expect(typography->Typography.pxToRem(24.))
    ->toBe("1.5rem");
  });

  test("fontStyle", (.) => {
    expect(typography->Typography.fontFamily)
    ->toBe(`"Roboto", "Helvetica", "Arial", sans-serif`);
    expect(typography->Typography.fontSize)
    ->toBe(14.);
    expect(typography->Typography.fontWeightLight)
    ->toBe(Css.FontWeight.integer(300));
    expect(typography->Typography.fontWeightRegular)
    ->toBe(Css.FontWeight.integer(400));
    expect(typography->Typography.fontWeightMedium)
    ->toBe(Css.FontWeight.integer(500));
    expect(typography->Typography.fontWeightBold)
    ->toBe(Css.FontWeight.integer(700));
  });

  test("h1", (.) => {
    expect(typography->Typography.h1)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 300,
      "fontSize": "6rem",
      "lineHeight": 1.167,
      "letterSpacing": "-0.01562em",
    }));
  });

  test("h2", (.) => {
    expect(typography->Typography.h2)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 300,
      "fontSize": "3.75rem",
      "lineHeight": 1.2,
      "letterSpacing": "-0.00833em",
    }));
  });

  test("h3", (.) => {
    expect(typography->Typography.h3)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "3rem",
      "lineHeight": 1.167,
      "letterSpacing": "0em",
    }));
  });

  test("h4", (.) => {
    expect(typography->Typography.h4)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "2.125rem",
      "lineHeight": 1.235,
      "letterSpacing": "0.00735em",
    }));
  });

  test("h5", (.) => {
    expect(typography->Typography.h5)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "1.5rem",
      "lineHeight": 1.334,
      "letterSpacing": "0em",
    }));
  });

  test("h6", (.) => {
    expect(typography->Typography.h6)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 500,
      "fontSize": "1.25rem",
      "lineHeight": 1.6,
      "letterSpacing": "0.0075em",
    }));
  });

  test("subtitle1", (.) => {
    expect(typography->Typography.subtitle1)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "1rem",
      "lineHeight": 1.75,
      "letterSpacing": "0.00938em",
    }));
  });

  test("subtitle2", (.) => {
    expect(typography->Typography.subtitle2)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 500,
      "fontSize": "0.875rem",
      "lineHeight": 1.57,
      "letterSpacing": "0.00714em",
    }));
  });

  test("body1", (.) => {
    expect(typography->Typography.body1)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "1rem",
      "lineHeight": 1.5,
      "letterSpacing": "0.00938em",
    }));
  });

  test("body2", (.) => {
    expect(typography->Typography.body2)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "0.875rem",
      "lineHeight": 1.43,
      "letterSpacing": "0.01071em",
    }));
  });

  test("button", (.) => {
    expect(typography->Typography.button)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 500,
      "fontSize": "0.875rem",
      "lineHeight": 1.75,
      "letterSpacing": "0.02857em",
      "textTransform": "uppercase",
    }));
  });

  test("caption", (.) => {
    expect(typography->Typography.caption)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "0.75rem",
      "lineHeight": 1.66,
      "letterSpacing": "0.03333em",
    }));
  });

  test("overline", (.) => {
    expect(typography->Typography.overline)
    ->toEqual(Obj.magic({
      "fontFamily": `"Roboto", "Helvetica", "Arial", sans-serif`,
      "fontWeight": 400,
      "fontSize": "0.75rem",
      "lineHeight": 2.66,
      "letterSpacing": "0.08333em",
      "textTransform": "uppercase",
    }));
  });
});