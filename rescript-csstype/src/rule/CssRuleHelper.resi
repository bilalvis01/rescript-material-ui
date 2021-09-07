module Make: (
  Type: {
    type declarationBlocks<'data>;
    type declarationConstructor<'data>;
    let declarationBlocks: 
      array<declarationConstructor<'data>> => 
      declarationBlocks<'data>;
  }
) => {
  let rule: 
    (string, array<Type.declarationConstructor<'data>>) => 
    [> CssRuleConstructor.t<Type.declarationBlocks<'data>> ];
};