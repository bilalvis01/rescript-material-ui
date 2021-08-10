module Make = (
  Type: {
    type t;
    type declarations;
  }
) => {
  module Selector = CssSelector.Make({ 
    type declarations = Type.declarations;
    type value = Type.declarations;
  });

  module AtRule = CssAtRule.Make({ 
    type descriptor = Type.declarations 
  });

  module PseudoClass = CssPseudoClass.Make({
    type value = Type.declarations;
    type declarations = Type.declarations;
    let map = v => {
      let (selector, declarations) = v;
      (`@global ${selector}`, declarations);
    };
  });

  external makeStyles: Js.Dict.t<Type.declarations> => Type.t = "%identity";

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