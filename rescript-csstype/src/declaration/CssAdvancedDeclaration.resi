type constructor<'data, 'declarationBlock> = [
  | CssDeclaration.constructor
  | CssDeclarationFn.constructor<'data>
  | CssRule.constructor<'declarationBlock>
  | CssPseudoClass.constructor<'declarationBlock>
  | CssAtRule.constructor
];

module Make: (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
  }
) => { 
  type t<'data> = (string, Type.value<'data>);

  let make: constructor<'data, Type.declarationBlock<'data>> => t<'data>;
};