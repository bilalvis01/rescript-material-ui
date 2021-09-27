type constructor<'data, 'declarationBlock> = [
  | CssDeclaration.constructor
  | CssDeclarationFn.constructor<'data>
  | CssRule.constructor<'declarationBlock>
  | CssPseudoClass.constructor<'declarationBlock>
  | CssAtRule.constructor
];

module Make = (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
  }
) => { 
  type t<'data> = (string, Type.value<'data>);

  module Declaration = CssDeclaration.Make({
    type value<'data> = Type.value<'data>;
    external map: ((string, CssDeclaration.boxValue)) => t<'data> = "%identity";
  });

  module DeclarationFn = CssDeclarationFn.Make({
    type value<'data> = Type.value<'data>;
    external map: ((string, CssDeclarationFn.boxValue<'data>)) => t<'data> = "%identity";
  });

  module PseudoClass = CssPseudoClass.Make({
    type value<'data> = Type.value<'data>
    type declarationBlock<'data> = Type.declarationBlock<'data>;
    external makeAdvancedDeclaration: ((string, declarationBlock<'data>)) => t<'data> = "%identity";
    let map = v => {
      let (selector, declarations) = v;
      makeAdvancedDeclaration((`&${selector}`, declarations));
    };
  });

  module Rule = CssRule.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlock<'data> = Type.declarationBlock<'data>;
    external map: ((string, declarationBlock<'data>)) => t<'data> = "%identity";
  });

  module AtRule = CssAtRule.Make({
    type value<'data> = Type.value<'data>;
    external map: ((string, CssAtRule.boxRule)) => t<'data> = "%identity";
  });

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