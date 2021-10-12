let make = declaration => {
  switch declaration {
  | #Declaration(property, value) => (property, value)
  };
};

external toStyleDeclaration: CssType.declarationEntry => CssType.styleDeclarationEntry<'data> = "%identity";

module Helper = {
  let declaration = (property, value) => 
    #Declaration(property, CssType.BoxPropertyValue(value));
};