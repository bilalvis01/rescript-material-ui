let make = v => {
  switch v {
  | #PseudoClass(selector, declarationBlock) => (selector, declarationBlock)
  };
};

external toStyleDeclaration: CssType.styleRuleEntry<'data> => CssType.styleDeclarationEntry<'data> = "%identity";

module MakeHelper = (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>; 
  }
) => {
  type declarations<'data> = array<DeclarationBlock.styleDeclaration<'data>>;
  let pseudoClass = (selector, declarations) => 
    #PseudoClass(selector, DeclarationBlock.declarationBlock(declarations));
  let hover = declarations => pseudoClass(":hover", declarations);
}