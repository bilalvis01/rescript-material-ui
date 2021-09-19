type constructor<'declarationBlocks> = [
  | #PseudoClass(string, 'declarationBlocks)
];

module Make: (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
    let map: ((string, value<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: constructor<Type.declarationBlocks<'data>> => t<'data>;
}

module MakeHelper: (
  Type: {
    type declarationBlocks<'data>;
    type declarationConstructor<'data>;
    let declarationBlocks: 
      array<declarationConstructor<'data>> => 
      declarationBlocks<'data>; 
  }
) => {
  let pseudoClass:
    (string, array<Type.declarationConstructor<'data>>) => 
    [> constructor<Type.declarationBlocks<'data>> ];
  let hover: 
    array<Type.declarationConstructor<'data>> => 
    [> constructor<Type.declarationBlocks<'data>> ];
}