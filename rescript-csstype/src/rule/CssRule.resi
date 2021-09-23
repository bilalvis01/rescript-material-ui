type constructor<'declarationBlock> = [ | #Rule(string, 'declarationBlock) ];

module Make: (
  Type: {
    type declarationBlock<'data>;
  }
) => {
  type t<'data> = (string, Type.declarationBlock<'data>);

  let make: constructor<Type.declarationBlock<'data>> => t<'data>;
}

module MakeHelper: (
  D: {
    type declarationBlock<'data>;
    type declarationConstructor<'data>;
    let style: 
      array<declarationConstructor<'data>> => 
      declarationBlock<'data>;
  }
) => {
  let rule: 
    (string, array<D.declarationConstructor<'data>>) => 
    [> constructor<D.declarationBlock<'data>> ];
};