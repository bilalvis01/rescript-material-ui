open Jest;
open Css;

test("style", (.) => {
  expect({
    "wrapper": style([
      background(url("image.png")),
      color(rgb(255., 255., 255.)),
      paddingTop(px(24.)),
      paddingBottom(px(24.)),
      paddingLeft(px(40.)),
      paddingRight(px(40.)),
      marginNumber(24.),
    ]),
    "button": style([
      color(hsla(deg(360.), pct(100.), pct(50.), 0.5)),
      hover([
        background(#blue)
      ]),
    ]),
    "@font-face": FontFace.descriptors([
      FontFace.fontDisplay(#auto),
    ]),
  })
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
    "@font-face": {
      "fontDisplay": "auto"
    },
  }));
});

test("styles", (.) => {
  expect(styles([
    selector("wrapper", [
      background(url("image.png")),
      color(rgb(255., 255., 255.)),
      paddingTop(px(24.)),
      paddingBottom(px(24.)),
      paddingLeft(px(40.)),
      paddingRight(px(40.)),
      marginNumber(24.),
    ]),
    selector("button", [
      color(hsla(deg(360.), pct(100.), pct(50.), 0.5)),
      hover([
        background(#blue)
      ]),
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
    "@font-face": {
      "fontDisplay": "auto"
    },
    "@global :hover": {
      "color": "blue"
    },
  }));
});