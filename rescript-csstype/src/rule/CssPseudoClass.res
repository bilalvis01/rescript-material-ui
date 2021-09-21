type constructor<'declarationBlock> = [
  | #PseudoClass(string, 'declarationBlock)
];

module Make = (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
    let map: ((string, value<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  external makeValue: Type.declarationBlock<'data> => Type.value<'data> = "%identity";

  let make = v => {
    switch v {
    | #PseudoClass(selector, declarationBlock) => (selector, makeValue(declarationBlock))
    }
    ->Type.map
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
  let pseudoClass = (selector, declarations) => 
    #PseudoClass(selector, Type.declarationBlock(declarations));
  let hover = declarations => pseudoClass(":hover", declarations);
}