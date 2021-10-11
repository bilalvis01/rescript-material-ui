type r<'a, 'data> = [> CssType.rule<'data> ] as 'a;

let make: CssType.rule<'data> => CssType.styleRuleEntry<'data>;

external toStyleDeclaration: CssType.styleRuleEntry<'data> => CssType.styleDeclarationEntry<'data> = "%identity";

module MakeHelper: (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  let rule: (string, array<DeclarationBlock.styleDeclaration<'data>>) => r<'a, 'data>;
};