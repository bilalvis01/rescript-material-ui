module Make = (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  include CssPropertyValue;
  include CssValueHelper;
  include CssRule.MakeHelper({ 
    type styleDeclaration<'data> = DeclarationBlock.styleDeclaration<'data>;
    let declarationBlock = DeclarationBlock.declarationBlock; 
  });
  include CssAtRuleHelper;
  include CssPseudoClass.MakeHelper({ 
    type styleDeclaration<'data> = DeclarationBlock.styleDeclaration<'data>;
    let declarationBlock = DeclarationBlock.declarationBlock; 
  });
  include CssDeclarationHelper;
  include CssDeclarationFnHelper;
};