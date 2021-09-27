open Jest;

open Jss.Css;

let _ = 
  Jss.jss
  ->Jss.setup(Jss.preset());

type color =
  | Blue
  | Red;

type data = {
  space: option<float>,
  color: option<color>, 
};

let data = {
  space: Some(24.),
  color: Some(Blue),
};

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
        color(hsla(360, pct(100.), pct(50.), 0.5)),
        hover([
          background(#blue)
        ]),
      ]),
      hover([
        color(#blue)
      ]),
    ]),
    rule("header", [
      important(colorFn(data =>
        data.color
        ->Belt.Option.map(color => 
          switch color {
            | Blue => Color.value(#blue)
            | Red => Color.value(#red)
          }
        )
      )),
      marginFn(data => 
        data.space
        ->Belt.Option.map(space => Margin.number(space))
      ),
    ]),
  ]);

  expect(
    Jss.jss
    ->Jss.createStyleSheet(s)
    ->Jss.update(data)
    ->Jss.toString
  )
  ->toMatchSnapshot()
});