let make = v => {
  switch v {
  | #Rule(selector, declarationBlock) => (selector, declarationBlock);
  };
};

external toStyleDeclaration: CssType.styleRule<'data> => CssType.styleDeclaration<'data> = "%identity";

module MakeHelper = (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  let rule = (selector, declarations) => 
    #Rule(selector, DeclarationBlock.declarationBlock(declarations));
}