module Make: (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
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
    advancedDeclarationConstructorLike<'data, Type.declarationBlocks<'data>>;

  let make: array<advancedDeclarationConstructor<'data>> => Type.declarationBlocks<'data>;
};