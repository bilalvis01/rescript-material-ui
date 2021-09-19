module Make = (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  type advancedDeclarationConstructorLike<'data, 'declarationBlocks> = [
    | CssDeclaration.constructor
    | CssDeclarationFn.constructor<'data>
    | CssRule.constructor<'declarationBlocks>
    | CssPseudoClass.constructor<'declarationBlocks>
    | CssAtRule.constructor
  ];

  type advancedDeclarationConstructor<'data> = 
    advancedDeclarationConstructorLike<'data, Type.t<'data>>;

  type advancedDeclaration<'data> = (string, Type.value<'data>);

  module Declaration = { 
    external toAdvancedDeclaration: CssDeclaration.t => advancedDeclaration<'data> = "%identity";
    let make = v => CssDeclaration.make(v)->toAdvancedDeclaration;
  };

  module DeclarationFn = CssDeclarationFn.Make({
    type value<'data> = Type.value<'data>
  });

  module PseudoClass = CssPseudoClass.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.t<'data>;
    let map = v => {
      let (selector, declarations) = v;
      (`&${selector}`, declarations);
    };
  });

  module Rule = CssRule.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.t<'data>;
  });

  module AtRule = {
    external toDeclaration: CssAtRule.t => advancedDeclaration<'data> = "%identity";
    let make = v => CssAtRule.make(v)->toDeclaration;
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