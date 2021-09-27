open Jest;

type value<'data>;
type declarationBlock<'data>;
type statements<'data>;

module DeclarationBlock = CssAdvancedDeclarationBlock.Make({
  type t<'data> = declarationBlock<'data>;
  type value<'data> = value<'data>;
});

module Statements = CssStatements.Make({
  type t<'data> = statements<'data>;
  type declarationBlock<'data> = declarationBlock<'data>;
});

/*
Helper
*/
include CssHelper.Make({ 
  type declarationBlock<'data> = declarationBlock<'data>; 
  type declarationConstructor<'data> = CssAdvancedDeclaration.constructor<'data, declarationBlock<'data>>;
  let style = DeclarationBlock.make; 
});

test("declarationBlock", (.) => {
  expect(DeclarationBlock.make([
    declaration("background", Property.string(`url("image.png")`)),
    declaration("color", Property.string("rgb(200, 200, 200)")),
    declaration("margin", Property.number(24.)),
    paddingTop(px(24)),
    paddingBottom(px(24)),
    paddingLeft(px(40)),
    paddingRight(px(40)),
    rule("& .header", [
      color(rgb(200, 200, 200)),
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
  ]))
  ->toEqual(Obj.magic({
    "background": `url("image.png")`,
    "color": "rgb(200, 200, 200)",
    "margin": 24,
    "paddingTop": "24px",
    "paddingBottom": "24px",
    "paddingLeft": "40px",
    "paddingRight": "40px",
    "& .header": {
      "color": "rgb(200, 200, 200)",
      "margin": 24,
      "paddingTop": "24px",
      "paddingBottom": "24px",
      "paddingLeft": "40px",
      "paddingRight": "40px",
    },
    "& .button": {
      "color": "hsla(360, 100%, 50%, 0.5)"
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
  expect(Statements.make([
    rule("app", [
      declaration("background", Property.string(`url("image.png")`)),
      declaration("color", Property.string("rgb(200, 200, 200)")),
      declaration("margin", Property.number(24.)),
      paddingTop(px(24)),
      paddingBottom(px(24)),
      paddingLeft(px(40)),
      paddingRight(px(40)),
      rule("& .header", [
        background(url("image.png")),
        color(rgb(200, 200, 200)),
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
    hover([
      color(rgb(100, 100, 100))
    ]),
  ]))
  ->toEqual(Obj.magic({
    "app": {
      "background": `url("image.png")`,
      "color": "rgb(200, 200, 200)",
      "margin": 24,
      "paddingTop": "24px",
      "paddingBottom": "24px",
      "paddingLeft": "40px",
      "paddingRight": "40px",
      "& .header": {
        "background": `url("image.png")`,
        "color": "rgb(200, 200, 200)",
        "margin": 24,
        "paddingTop": "24px",
        "paddingBottom": "24px",
        "paddingLeft": "40px",
        "paddingRight": "40px",
      },
      "& .button": {
        "color": "hsla(360, 100%, 50%, 0.5)"
        "&:hover": {
          "background": "blue"
        }
      },
      "&:hover": {
        "color": "blue"
      },
    },
    ":hover": {
      "color": "rgb(100, 100, 100)",
    },
  }));
});