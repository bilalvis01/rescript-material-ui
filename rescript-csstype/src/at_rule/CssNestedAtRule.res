type r<'a> = [> CssType.nestedAtRule ] as 'a;

let make = v => {
  switch v {
  | #NestedAtRule(identifier, rule, descriptorBlock) =>
    switch rule {
    | Some(rule) => (`${identifier} ${rule}`, descriptorBlock)
    | None => (identifier, descriptorBlock) 
    }
  };
};

external toStyleDeclaration: CssType.nestedAtRuleEntry => CssType.styleDeclarationEntry<'data> = "%identity";
external toRuleSet: CssType.nestedAtRuleEntry => CssType.styleRuleEntry<'data> = "%identity";

module Helper = {
  let nestedAtRule = (identifier, rule, descriptorBlock) => 
    #NestedAtRule(identifier, rule, CssType.BoxDescriptorBlock(descriptorBlock));
};