open Jest;
open Css;

let _ = 
  Jss.jss
  ->Jss.setup(Jss.preset());

test("styles", (.) => {
  expect(styles([
      rule("wrapper", [
        background(url("image.png")),
        color(rgb(255., 255., 255.)),
        paddingTop(px(24.)),
        paddingBottom(px(24.)),
        paddingLeft(px(40.)),
        paddingRight(px(40.)),
        marginNumber(24.),
      ]),
      rule("button", [
        color(hsla(deg(360.), pct(100.), pct(50.), 0.5)),
        hover([
          background(#blue)
        ]),
      ]),
      rule("tab", [
        margin2Number(~tb=24., ~lr=24.),
      ]),
      rule("tabRed", [
        important(margin2Number(~tb=24., ~lr=24.)),
        important(declaration("background", [`url("image.png")`, `url("image.png")`])),
      ]),
      fontFace([
        FontFace.fontDisplay(#auto),
      ]),
      hover([
        color(#blue)
      ]),
    ]))
  ->toEqual(Obj.magic({
    "wrapper": {
      "background": `url("image.png")`,
      "color": "rgb(255, 255, 255)",
      "paddingTop": "24px",
      "paddingBottom": "24px",
      "paddingLeft": "40px",
      "paddingRight": "40px",
      "margin": 24,
    },
    "button": {
      "color": "hsla(360deg, 100%, 50%, 0.5)"
      "&:hover": {
        "background": "blue"
      }
    },
    "tab": {
      "margin": [[24., 24.]],
    },
    "tabRed": {
      "margin": ([24., 24.], "!important"),
      "background": ([`url("image.png")`], [`url("image.png")`], "!important"),
    },
    "@font-face": {
      "fontDisplay": "auto"
    },
    "@global :hover": {
      "color": "blue"
    },
  }));
});

type data = { 
  "color": option<ValueType.color_global>, 
  "space": option<float> 
};

test("styles snapshot", (.) => {
  let stylesObj: statementBlocks<data> = 
    styles([
      rule("wrapper", [
        background(url("image.png")),
        color(rgb(255., 255., 255.)),
        paddingTop(px(24.)),
        paddingBottom(px(24.)),
        paddingLeft(px(40.)),
        paddingRight(px(40.)),
        marginNumber(24.),
      ]),
      rule("button", [
        color(hsla(deg(360.), pct(100.), pct(50.), 0.5)),
        hover([
          background(#blue)
        ]),
      ]),
      rule("tab", [
        colorFn(data => data["color"]->Belt.Option.map(color => Color.value(color))),
        marginFn(data => data["space"]->Belt.Option.map(space => Margin.number2(~tb=space, ~lr=space))),
      ]),
      rule("tabRed", [
        important(marginFn(data => data["space"]->Belt.Option.map(space => Margin.number2(~tb=space, ~lr=space)))),
        important(declaration("background", [`url("image.png")`, `url("image.png")`])),
      ]),
      fontFace([
        FontFace.fontDisplay(#auto),
      ]),
      hover([
        color(#blue)
      ]),
    ]);

  let data = {
    "color": Some(#red),
    "space": Some(24.),
  };

  expect(
    Jss.jss
    ->Jss.createStyleSheet(stylesObj)
    ->Jss.update(data)
    ->Jss.toString
  )
  ->toMatchSnapshot;
});