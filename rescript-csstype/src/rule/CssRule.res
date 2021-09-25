type constructor<'declarationBlock> = [ | #Rule(string, 'declarationBlock) ];

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
    | #Rule(selector, declarationBlock) => (selector, declarationBlock);
    }
    ->map;
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
  let rule = (selector, declarations) => 
    #Rule(selector, style(declarations));
}