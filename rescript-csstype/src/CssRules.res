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

  module AtRule = CssAtRule.Make({ 
    type descriptor = Type.style 
  });

  module PseudoClass = CssPseudoClass.Make({
    type value = Type.style;
    type style = Type.style;
    let map = v => {
      let (selector, style) = v;
      (`@global ${selector}`, style);
    };
  });

  external makeStyles: Js.Dict.t<Type.style> => Type.t = "%identity";

  let make = rules => {
    Belt.Array.map(rules, rule => {
      switch rule {
      | #...CssSelectorType.t as s => Selector.make(s)
      | #...CssAtRuleType.t as a => AtRule.make(a)
      | #...CssPseudoClassType.t as p => PseudoClass.make(p)
      }
    })
    ->Js.Dict.fromArray
    ->makeStyles
  };
}