open Jest;

type value;
type style;

module Declarations = CssDeclarations.Make({
  type value = value;
  type style = style;
});

let style = Declarations.make;

test("declarations", (.) => {
  expect(style([
    Css.background(Css.url("image.png")),
    Css.color(Css.rgb(255., 255., 255.)),
    Css.paddingTop(Css.px(24.)),
    Css.paddingBottom(Css.px(24.)),
    Css.paddingLeft(Css.px(40.)),
    Css.paddingRight(Css.px(40.)),
    Css.marginNumber(24.),
  ]))
  ->toEqual(Obj.magic({
    "background": `url("image.png")`,
    "color": "rgb(255, 255, 255)",
    "paddingTop": "24px",
    "paddingBottom": "24px",
    "paddingLeft": "40px",
    "paddingRight": "40px",
    "margin": 24,
  }))
});