type constructor<'declarationBlock> = [ | #Rule(string, 'declarationBlock) ];

module Make = (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  external makeValue: Type.declarationBlock<'data> => Type.value<'data> = "%identity";

  let make = v => {
    switch v {
    | #Rule(selector, declarationBlock) => (selector, makeValue(declarationBlock));
    }
  };
}

module MakeHelper = (
  Type: {
    type declarationBlock<'data>;
    type declarationConstructor<'data>;
    let declarationBlock: 
      array<declarationConstructor<'data>> => 
      declarationBlock<'data>;
  }
) => {
  let rule = (selector, declarations) => 
    #Rule(selector, Type.declarationBlock(declarations));
}