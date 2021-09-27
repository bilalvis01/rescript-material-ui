type constructor<'declarationBlock> = [
  | CssRule.constructor<'declarationBlock>
  | CssAtRule.constructor
  | CssPseudoClass.constructor<'declarationBlock>
];

module Make: (
  Type: {
    type declarationBlock<'data>;
    let pseudoClassSelector: string => string;
  }
) => {
  type t<'data> = (string, Type.declarationBlock<'data>);
  let make: constructor<Type.declarationBlock<'data>> => t<'data>;
}