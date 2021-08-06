module Make = (
  Type: {
    type t;
    type style;
  }
) => {
  module Selector = CssSelector.Make({ 
    type style = Type.style;
    type value = Type.style;
  });
  module AtRule = CssAtRule.Make({ type descriptor = Type.style });

  external makeStyles: Js.Dict.t<Type.style> => Type.t = "%identity";

  let make = rules => {
    Belt.Array.map(rules, rule => {
      switch rule {
      | #...CssSelectorType.t as s => Selector.make(s)
      | #...CssAtRuleType.t as atRule => AtRule.make(atRule)
      }
    })
    ->Js.Dict.fromArray
    ->makeStyles
  };
}