type value;
type declarations;
type rules;

include Ress.Css.Make({
  type value = value;
  type declarations = declarations;
  type rules = rules;
});

let style = Declarations.make;
let styles = Rules.make;

module React = CssReact;