open Jest;

open Jss.Css;

test("declarationBlock", (.) => {
  expect(style([
    rule("& .wrapper", [
      background(url("image.png")),
      color(rgb(255., 255., 255.)),
      paddingTop(px(24.)),
      paddingBottom(px(24.)),
      paddingLeft(px(40.)),
      paddingRight(px(40.)),
      marginNumber(24.),
    ]),
    rule("& .button", [
      color(hsla(deg(360.), pct(100.), pct(50.), 0.5)),
      hover([
        background(#blue)
      ]),
    ]),
    hover([
      color(#blue)
    ]),
  ]))
  ->toEqual(Obj.magic({
    "& .wrapper": {
      "background": `url("image.png")`,
      "color": "rgb(255, 255, 255)",
      "paddingTop": "24px",
      "paddingBottom": "24px",
      "paddingLeft": "40px",
      "paddingRight": "40px",
      "margin": 24,
    },
    "& .button": {
      "color": "hsla(360deg, 100%, 50%, 0.5)"
      "&:hover": {
        "background": "blue"
      }
    },
    "&:hover": {
      "color": "blue"
    },
  }));
});

test("statements", (.) => {
  expect(styles([
    rule("app", [
      rule("& .wrapper", [
        background(url("image.png")),
        color(rgb(255., 255., 255.)),
        paddingTop(px(24.)),
        paddingBottom(px(24.)),
        paddingLeft(px(40.)),
        paddingRight(px(40.)),
        marginNumber(24.),
      ]),
      rule("& .button", [
        color(hsla(deg(360.), pct(100.), pct(50.), 0.5)),
        hover([
          background(#blue)
        ]),
      ]),
      hover([
        color(#blue)
      ]),
    ]),
  ]))
  ->toEqual(Obj.magic({
    "app": {
      "& .wrapper": {
        "background": `url("image.png")`,
        "color": "rgb(255, 255, 255)",
        "paddingTop": "24px",
        "paddingBottom": "24px",
        "paddingLeft": "40px",
        "paddingRight": "40px",
        "margin": 24,
      },
      "& .button": {
        "color": "hsla(360deg, 100%, 50%, 0.5)"
        "&:hover": {
          "background": "blue"
        }
      },
      "&:hover": {
        "color": "blue"
      },
    },
  }));
});