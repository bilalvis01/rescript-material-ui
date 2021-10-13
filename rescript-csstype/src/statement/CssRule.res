let make = v => {
  switch v {
  | #Rule(selector, declarationBlock) => (selector, declarationBlock);
  };
};

external toStyleDeclaration: CssType.styleRule<'data> => CssType.styleDeclaration<'data> = "%identity";

module MakeHelper = (
  D: {
    type syntax<'data>;
    let declarationBlock: array<syntax<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  let rule = (selector, declarations) => 
    #Rule(selector, D.declarationBlock(declarations));
}