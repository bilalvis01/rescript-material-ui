let make = declaration => {
  switch declaration {
  | #DeclarationFn(name, value) => (name, value)
  };
};

external toStyleDeclaration: CssType.declarationFn<'data> => CssType.styleDeclaration<'data> = "%identity";

module Helper = {
  let declarationFn = (property, value) => #DeclarationFn(property, CssType.BoxPropertyValueFn(value));
};