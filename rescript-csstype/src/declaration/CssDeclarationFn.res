type d<'a, 'data> = [> CssType.declarationFn<'data> ] as 'a;

let make = declaration => {
  switch declaration {
  | #DeclarationFn(name, value) => (name, value)
  };
};

external toStyleDeclaration: CssType.declarationFnEntry<'data> => CssType.styleDeclarationEntry<'data> = "%identity";

module Helper = {
  let declarationFn = (property, value) => #DeclarationFn(property, CssType.BoxPropertyValueFn(value));
};