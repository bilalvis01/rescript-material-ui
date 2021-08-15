module Make = (
  Type: {
    type t<'data>;
    type declarations<'data>;
  }
) => {
  module Selector = CssSelector.Make({ 
    type declarations<'data> = Type.declarations<'data>;
  });

  module AtRule = CssAtRule.Make();

  module PseudoClass = CssPseudoClass.Make({
    type declarations<'data> = Type.declarations<'data>;
    let map = v => {
      let (selector, declarations) = v;
      (`@global ${selector}`, declarations);
    };
  });

  type rule<'data> = (string, Type.declarations<'data>);

  external makeRules: Js.Dict.t<Type.declarations<'data>> => Type.t<'data> = "%identity";
  external selectorToRule: Selector.t<'data> => rule<'data> = "%identity";
  external atRuleToRule: AtRule.t => rule<'data> = "%identity";
  external pseudoClassToRule: PseudoClass.t<'data> => rule<'data> = "%identity";

  let make = rules => {
    Belt.Array.map(rules, rule => {
      switch rule {
      | #...CssSelectorConstructor.t as s => 
        Selector.make(s)
        ->selectorToRule
      | #...CssAtRuleConstructor.t as a => 
        AtRule.make(a)
        ->atRuleToRule
      | #...CssPseudoClassConstructor.t as p => 
        PseudoClass.make(p)
        ->pseudoClassToRule
      }
    })
    ->Js.Dict.fromArray
    ->makeRules
  };
}