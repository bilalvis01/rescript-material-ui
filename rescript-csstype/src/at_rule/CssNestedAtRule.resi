type r<'a> = [> CssType.nestedAtRule ] as 'a;
  
let make: CssType.nestedAtRule => CssType.nestedAtRuleEntry;

external toStyleDeclaration: CssType.nestedAtRuleEntry => CssType.styleDeclarationEntry<'data> = "%identity";
external toRuleSet: CssType.nestedAtRuleEntry => CssType.styleRuleEntry<'data> = "%identity";

module Helper: {
  let nestedAtRule: (string, option<string>, CssType.descriptorBlock<'a>) => r<'b>;
};