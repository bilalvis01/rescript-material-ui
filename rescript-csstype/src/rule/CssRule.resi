type constructor<'declarationBlock> = [ | #Rule(string, 'declarationBlock) ];

module Make: (
  D: {
    type value<'data>;
    type declarationBlock<'data>;
    let map: ((string, declarationBlock<'data>)) => (string, value<'data>); 
  }
) => {
  type t<'data> = (string, D.value<'data>);

  let make: constructor<D.declarationBlock<'data>> => t<'data>;
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