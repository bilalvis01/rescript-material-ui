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

  module Declaration = { 
    external toAdvancedDeclaration: CssDeclaration.t => advancedDeclaration<'data> = "%identity";
    let make = v => CssDeclaration.make(v)->toAdvancedDeclaration;
  };

  module DeclarationFn = {
    external toAdvancedDeclaration: CssDeclarationFn.t<'data> => advancedDeclaration<'data> = "%identity";
    let make = v => CssDeclarationFn.make(v)->toAdvancedDeclaration;
  };

  module PseudoClassBase = CssPseudoClass.Make({
    type declarationBlock<'data> = Type.t<'data>;
    let map = v => {
      let (selector, declarations) = v;
      (`&${selector}`, declarations);
    };
  });

  module PseudoClass = {
    external toAdvancedDeclaration: PseudoClassBase.t<'data> => advancedDeclaration<'data> = "%identity";
    let make = v => PseudoClassBase.make(v)->toAdvancedDeclaration;
  };

  module RuleBase = CssRule.Make({
    type declarationBlock<'data> = Type.t<'data>;
  });

  module Rule = {
    external toAdvancedDeclaration: RuleBase.t<'data> => advancedDeclaration<'data> = "%identity";
    let make = v => RuleBase.make(v)->toAdvancedDeclaration;
  };

  module AtRule = {
    external toAdvancedDeclaration: CssAtRule.t => advancedDeclaration<'data> = "%identity";
    let make = v => CssAtRule.make(v)->toAdvancedDeclaration;
  };

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

  external makeDeclarationBlocks: Js.Dict.t<Type.value<'data>> => Type.t<'data> = "%identity";

  let make = declarations => {
    declarations
    ->Belt.Array.map(declaration => {
      switch declaration {
      | #...advancedDeclarationConstructor as d => AdvancedDeclaration.make(d) 
      }
    })
    ->Js.Dict.fromArray
    ->makeDeclarationBlocks;
  };
};