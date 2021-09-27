module Make = (
  D: {
    type declarationConstructor<'data>;
    type declarationBlock<'data>;
    let style: 
      array<declarationConstructor<'data>> => 
      declarationBlock<'data>;
  }
) => {
  include CssValueType;
  include CssPropertyValue;
  include CssValueHelper;
  include CssRule.MakeHelper({ 
    type declarationBlock<'data> = D.declarationBlock<'data>; 
    type declarationConstructor<'data> = D.declarationConstructor<'data>;
    let style = D.style; 
  });
  include CssAtRuleHelper;
  include CssPseudoClass.MakeHelper({ 
    type declarationBlock<'data> = D.declarationBlock<'data>; 
    type declarationConstructor<'data> = D.declarationConstructor<'data>;
    let style = D.style; 
  });
  include CssDeclarationHelper;
  include CssDeclarationFnHelper;
};