module Make = (
  Type: {
    type declarationBlocks<'data>;
    type declarationConstructor<'data>;
    let declarationBlocks: 
      array<declarationConstructor<'data>> => 
      declarationBlocks<'data>;
  }
) => {
  let rule = (selector, declarations) => 
    #Rule(selector, Type.declarationBlocks(declarations));
}