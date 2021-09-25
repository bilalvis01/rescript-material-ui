type constructor<'declarationBlock> = [
  | #PseudoClass(string, 'declarationBlock)
];

module Make = (
  D: {
    type value<'data>;
    type declarationBlock<'data>;
    let map: ((string, declarationBlock<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, D.value<'data>);

  let { map } = module(D);

  let make = v => {
    switch v {
    | #PseudoClass(selector, declarationBlock) => (selector, declarationBlock)
    }
    ->map
  };
}

module MakeHelper = (
  D: {
    type declarationBlock<'data>;
    type declarationConstructor<'data>;
    let style: 
      array<declarationConstructor<'data>> => 
      declarationBlock<'data>; 
  }
) => {
  let { style } = module(D);
  let pseudoClass = (selector, declarations) => 
    #PseudoClass(selector, style(declarations));
  let hover = declarations => pseudoClass(":hover", declarations);
}