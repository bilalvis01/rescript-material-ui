open Jest;
open Css;

describe("style", (.) => {
  test("style", (.) => {
    expect(style([
      background(url("image.png")),
      color(rgb(255., 255., 255.)),
      paddingTop(px(24.)),
      paddingBottom(px(24.)),
      paddingLeft(px(40.)),
      paddingRight(px(40.)),
      marginNumber(24.),
    ]))
    ->toEqual(Obj.magic({
      "background": `url("image.png")`,
      "color": "rgb(255, 255, 255)",
      "paddingTop": "24px",
      "paddingBottom": "24px",
      "paddingLeft": "40px",
      "paddingRight": "40px",
      "margin": 24,
    }));
  });
});