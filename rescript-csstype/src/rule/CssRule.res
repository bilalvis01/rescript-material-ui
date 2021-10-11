type r<'a, 'data> = [> CssType.rule<'data> ] as 'a;

let make = v => {
  switch v {
  | #Rule(selector, declarationBlock) => (selector, declarationBlock);
  };
};

external toStyleDeclaration: CssType.styleRuleEntry<'data> => CssType.styleDeclarationEntry<'data> = "%identity";

module MakeHelper = (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  let rule = (selector, declarations) => 
    #Rule(selector, DeclarationBlock.declarationBlock(declarations));
}