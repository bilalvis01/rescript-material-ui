type constructor<'declarationBlocks> = [
  | #PseudoClass(string, 'declarationBlocks)
];

module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
    let map: ((string, value<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  external makeValue: Type.declarationBlocks<'data> => Type.value<'data> = "%identity";

  let make = v => {
    switch v {
    | #PseudoClass(selector, declarationBlocks) => (selector, makeValue(declarationBlocks))
    }
    ->Type.map
  };
}

module MakeHelper = (
  Type: {
    type declarationBlocks<'data>;
    type declarationConstructor<'data>;
    let declarationBlocks: 
      array<declarationConstructor<'data>> => 
      declarationBlocks<'data>; 
  }
) => {
  let pseudoClass = (selector, declarations) => 
    #PseudoClass(selector, Type.declarationBlocks(declarations));
  let hover = declarations => pseudoClass(":hover", declarations);
}