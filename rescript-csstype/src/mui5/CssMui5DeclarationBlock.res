module Make = (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  type advancedDeclarationConstructorLike<'data, 'declarationBlock> = [
    | CssDeclaration.constructor
    | CssDeclarationFn.constructor<'data>
    | CssRule.constructor<'declarationBlock>
    | CssPseudoClass.constructor<'declarationBlock>
    | CssAtRule.constructor
  ];

  type advancedDeclarationConstructor<'data> = 
    advancedDeclarationConstructorLike<'data, Type.t<'data>>;

  type advancedDeclaration<'data> = (string, Type.value<'data>);

  module Declaration = CssDeclaration.Make({
    type value<'data> = Type.value<'data>;
    external map: ((string, CssDeclaration.boxValue)) => advancedDeclaration<'data> = "%identity";
  });

  module DeclarationFn = CssDeclarationFn.Make({
    type value<'data> = Type.value<'data>;
    external map: ((string, CssDeclarationFn.boxValue<'data>)) => advancedDeclaration<'data> = "%identity";
  });

  module PseudoClass = CssPseudoClass.Make({
    type value<'data> = Type.value<'data>
    type declarationBlock<'data> = Type.t<'data>;
    external makeAdvancedDeclaration: ((string, declarationBlock<'data>)) => advancedDeclaration<'data> = "%identity";
    let map = v => {
      let (selector, declarations) = v;
      makeAdvancedDeclaration((`&${selector}`, declarations));
    };
  });

  module Rule = CssRule.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlock<'data> = Type.t<'data>;
    external map: ((string, declarationBlock<'data>)) => advancedDeclaration<'data> = "%identity";
  });

  module AtRule = CssAtRule.Make({
    type value<'data> = Type.value<'data>;
    external map: ((string, CssAtRule.boxRule)) => advancedDeclaration<'data> = "%identity";
  });

  module AdvancedDeclaration: {
    let make: advancedDeclarationConstructor<'data> => advancedDeclaration<'data>;
  } = {
    let make = declaration => {
      switch declaration {
      | #...CssDeclaration.constructor as d => Declaration.make(d)
      | #...CssDeclarationFn.constructor as d => DeclarationFn.make(d)
      | #...CssRule.constructor as d => Rule.make(d)
      | #...CssPseudoClass.constructor as d => PseudoClass.make(d)
      | #...CssAtRule.constructor as d => AtRule.make(d)
      };
    };
  };

  external makeDeclarationBlock: Js.Dict.t<Type.value<'data>> => Type.t<'data> = "%identity";

  let make = declarations => {
    declarations
    ->Belt.Array.map(declaration => {
      switch declaration {
      | #...advancedDeclarationConstructor as d => AdvancedDeclaration.make(d) 
      }
    })
    ->Js.Dict.fromArray
    ->makeDeclarationBlock;
  };
};