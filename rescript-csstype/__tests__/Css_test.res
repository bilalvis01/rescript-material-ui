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
      borderUnion(Border.value(~color=rgb(200., 200., 200.), ~width=px(2.), #solid)),
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
      "border": "2px rgb(200, 200, 200) solid",
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

type data = { "color": ValueType.color_global, "space": float };

test("styles", (.) => {
  let colorFunction: data => option<Color.t> = data => Some(Color.value(data["color"]));
  let marginFunction: data => option<Margin.t> = data => Some(Margin.number(data["space"]));

  let styles: rules<data> = 
    styles([
      selector("wrapper", [
        background(url("image.png")),
        color(rgb(255., 255., 255.)),
        paddingTop(px(24.)),
        paddingBottom(px(24.)),
        paddingLeft(px(40.)),
        paddingRight(px(40.)),
        marginNumber(24.),
      ]),
      selector("tab", [
        colorFn(colorFunction),
        marginFn(marginFunction),
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
    ]);
  
  expect(styles)
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
      "color": colorFunction,
      "margin": marginFunction,
    },
    "@font-face": {
      "fontDisplay": "auto"
    },
    "@global :hover": {
      "color": "blue"
    },
  }));
});