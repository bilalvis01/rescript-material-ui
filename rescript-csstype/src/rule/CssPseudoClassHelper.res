module Make = (
  Type: {
    type declarationBlocks<'data>;
    type declarationConstructor<'data>;
    let declarationBlocks: 
      array<declarationConstructor<'data>> => 
      declarationBlocks<'data>; 
  }
) => {
  let hover = declarations => #Hover(Type.declarationBlocks(declarations));
}