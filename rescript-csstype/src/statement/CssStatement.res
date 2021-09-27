type constructor<'declarationBlock> = [
  | CssRule.constructor<'declarationBlock>
  | CssAtRule.constructor
  | CssPseudoClass.constructor<'declarationBlock>
];

module Make = (
  Type: {
    type declarationBlock<'data>;
    let pseudoClassSelector: string => string;
  }
) => {  
  type t<'data> = (string, Type.declarationBlock<'data>);

  let { pseudoClassSelector } = module(Type);

  module Rule = CssRule.Make({
    type value<'data> = Type.declarationBlock<'data>;
    type declarationBlock<'data> = Type.declarationBlock<'data>;
    let map = v => v;
  });

  module AtRule = CssAtRule.Make({
    type value<'data> = Type.declarationBlock<'data>;
    external map: ((string, CssAtRule.boxRule)) => t<'data> = "%identity";
  });

  module PseudoClass = CssPseudoClass.Make({
    type value<'data> = Type.declarationBlock<'data>;
    type declarationBlock<'data> = Type.declarationBlock<'data>;
    let map = ((selector, value)) => (pseudoClassSelector(selector), value);
  });

  let make = statement => {
    switch statement {
    | #...CssRule.constructor as s => Rule.make(s)
    | #...CssAtRule.constructor as s => AtRule.make(s)
    | #...CssPseudoClass.constructor as s => PseudoClass.make(s)
    }
  };
}