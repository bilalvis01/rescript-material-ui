module Make = (
  Type: {
    type t;
    type value;
  }
) => {
  module Declaration = CssDeclaration.Make({ 
    type value = Type.value;
  });

  module Selector = CssSelector.Make({
    type declarations = Type.t;
    type value = Type.value
  });

  module PseudoClass = CssPseudoClass.Make({
    type declarations = Type.t;
    type value = Type.value;
    let map = v => {
      let (selector, declarations) = v;
      (`&${selector}`, declarations);
    };
  });

  module AtRule = CssAtRule.Make({
    type descriptor = Type.value;
  });

  external makeStyle: Js.Dict.t<Type.value> => Type.t = "%identity";
  let make = declarations => {
    declarations->Belt.Array.map(declaration => {
      switch declaration {
      | #...CssDeclarationConstructor.t as p => Declaration.make(p)
      | #...CssSelectorType.t as s => Selector.make(s)
      | #...CssPseudoClassType.t as p => PseudoClass.make(p)
      | #...CssAtRuleConstructor.t as a => AtRule.make(a)
      };
    })
    ->Js.Dict.fromArray
    ->makeStyle;
  };
};