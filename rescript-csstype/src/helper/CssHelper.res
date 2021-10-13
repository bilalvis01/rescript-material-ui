module Make = (
  D: {
    type syntax<'data>;
    let declarationBlock: array<syntax<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  include CssProperty;
  include CssValueHelper;
  include CssRule.MakeHelper({ 
    type syntax<'data> = D.syntax<'data>;
    let declarationBlock = D.declarationBlock; 
  });
  include CssAtRuleHelper;
  include CssPseudoClass.MakeHelper({ 
    type syntax<'data> = D.syntax<'data>;
    let declarationBlock = D.declarationBlock; 
  });
  include CssDeclarationHelper;
  include CssDeclarationFnHelper;
};