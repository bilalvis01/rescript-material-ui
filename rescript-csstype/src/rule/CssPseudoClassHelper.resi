module Make: (
  Type: {
    type declarationBlocks<'data>;
    type declarationConstructor<'data>;
    let declarationBlocks: 
      array<declarationConstructor<'data>> => 
      declarationBlocks<'data>; 
  }
) => {
  let hover: 
    array<Type.declarationConstructor<'data>> => 
    [> CssPseudoClassConstructor.hover<Type.declarationBlocks<'data>> ];
}