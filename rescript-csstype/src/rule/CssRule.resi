type constructor<'declarationBlock> = [ | #Rule(string, 'declarationBlock) ];

module Make: (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: constructor<Type.declarationBlock<'data>> => t<'data>;
}

module MakeHelper: (
  Type: {
    type declarationBlock<'data>;
    type declarationConstructor<'data>;
    let declarationBlock: 
      array<declarationConstructor<'data>> => 
      declarationBlock<'data>;
  }
) => {
  let rule: 
    (string, array<Type.declarationConstructor<'data>>) => 
    [> constructor<Type.declarationBlock<'data>> ];
};