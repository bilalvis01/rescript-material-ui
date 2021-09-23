type constructor<'declarationBlock> = [ | #Rule(string, 'declarationBlock) ];

module Make = (
  Type: {
    type declarationBlock<'data>;
  }
) => {
  type t<'data> = (string, Type.declarationBlock<'data>);

  let make = v => {
    switch v {
    | #Rule(selector, declarationBlock) => (selector, declarationBlock);
    }
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