open Jest;

open Jss.Css;

let _ = 
  Jss.jss
  ->Jss.setup(Jss.preset());

test("jss", (.) => {
  let s = styles([
    rule("app", [
      rule("& .wrapper", [
        background(url("image.png")),
        color(rgb(255, 255, 255)),
        paddingTop(px(24)),
        paddingBottom(px(24)),
        paddingLeft(px(40)),
        paddingRight(px(40)),
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
  ]);

  expect(
    Jss.jss
    ->Jss.createStyleSheet(s)
    ->Jss.toString
  )
  ->toMatchSnapshot()
});