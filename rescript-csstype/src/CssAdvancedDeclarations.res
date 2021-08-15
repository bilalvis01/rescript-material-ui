module Make = (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  module Declaration = CssDeclaration.Make();

  module DeclarationFn = CssDeclarationFn.Make();

  module Selector = CssSelector.Make({
    type declarations<'data> = Type.t<'data>;
  });

  module PseudoClass = CssPseudoClass.Make({
    type declarations<'data> = Type.t<'data>;
    let map = v => {
      let (selector, declarations) = v;
      (`&${selector}`, declarations);
    };
  });

  module AtRule = CssAtRule.Make();

  type declaration<'data> = (string, Type.value<'data>);

  external declarationToDeclaration: Declaration.t => declaration<'data> = "%identity";
  external declarationFnToDeclaration: DeclarationFn.t<'data> => declaration<'data> = "%identity";
  external selectorToDeclaration: Selector.t<'data> => declaration<'data> = "%identity";
  external pseudoClassToDeclaration: PseudoClass.t<'data> => declaration<'data> = "%identity";
  external atRuleToDeclaration: AtRule.t => declaration<'data> = "%identity";
  external makeDeclarations: Js.Dict.t<Type.value<'data>> => Type.t<'data> = "%identity";

  let make = declarations => {
    declarations->Belt.Array.map(declaration => {
      switch declaration {
      | #...CssDeclarationConstructor.t as d => 
        Declaration.make(d)
        ->declarationToDeclaration
      | #...CssDeclarationFnConstructor.t as d => 
        DeclarationFn.make(d)
        ->declarationFnToDeclaration
      | #...CssSelectorConstructor.t as s => 
        Selector.make(s)
        ->selectorToDeclaration
      | #...CssPseudoClassConstructor.t as p => 
        PseudoClass.make(p)
        ->pseudoClassToDeclaration
      | #...CssAtRuleConstructor.t as a => 
        AtRule.make(a)
        ->atRuleToDeclaration
      };
    })
    ->Js.Dict.fromArray
    ->makeDeclarations;
  };
};