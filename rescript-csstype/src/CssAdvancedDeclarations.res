module Make = (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  module Declaration = CssDeclaration;

  module DeclarationFn = CssDeclarationFn;

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

  module AtRule = CssAtRule;

  module Important = CssImportant.Make({
    type value<'data> = Type.value<'data>; 
  });

  type declaration<'data> = (string, Type.value<'data>);

  external declarationToDeclaration: Declaration.t => declaration<'data> = "%identity";
  external declarationFnToDeclaration: DeclarationFn.t<'data> => declaration<'data> = "%identity";
  external selectorToDeclaration: Selector.t<'data> => declaration<'data> = "%identity";
  external pseudoClassToDeclaration: PseudoClass.t<'data> => declaration<'data> = "%identity";
  external atRuleToDeclaration: AtRule.t => declaration<'data> = "%identity";
  external importantToDeclaration: Important.t<'data> => declaration<'data> = "%identity";
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
      | #...CssSelectorConstructor.t as d => 
        Selector.make(d)
        ->selectorToDeclaration
      | #...CssPseudoClassConstructor.t as d => 
        PseudoClass.make(d)
        ->pseudoClassToDeclaration
      | #...CssAtRuleConstructor.t as d => 
        AtRule.make(d)
        ->atRuleToDeclaration
      | #...CssImportantConstructor.t as d =>
        Important.make(d)
        ->importantToDeclaration
      };
    })
    ->Js.Dict.fromArray
    ->makeDeclarations;
  };
};