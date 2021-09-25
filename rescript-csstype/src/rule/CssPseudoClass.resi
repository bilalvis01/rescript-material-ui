type constructor<'declarationBlock> = [
  | #PseudoClass(string, 'declarationBlock)
];

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
  let pseudoClass:
    (string, array<D.declarationConstructor<'data>>) => 
    [> constructor<D.declarationBlock<'data>> ];
  let hover: 
    array<D.declarationConstructor<'data>> => 
    [> constructor<D.declarationBlock<'data>> ];
}