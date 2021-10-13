let make = v => {
  switch v {
  | #NestedAtRule(identifier, rule, descriptorBlock) =>
    switch rule {
    | Some(rule) => (`${identifier} ${rule}`, descriptorBlock)
    | None => (identifier, descriptorBlock) 
    }
  };
};

external toStyleDeclaration: CssType.nestedAtRule => CssType.styleDeclaration<'data> = "%identity";
external toRuleSet: CssType.nestedAtRule => CssType.styleRule<'data> = "%identity";

module Helper = {
  let nestedAtRule = (identifier, rule, descriptorBlock) => 
    #NestedAtRule(identifier, rule, CssType.BoxDescriptorBlock(descriptorBlock));
};