let make: CssType.declaration => CssType.declarationEntry;

external toStyleDeclaration: CssType.declarationEntry => CssType.styleDeclarationEntry<'data> = "%identity";

module Helper: {
  let declaration: (string, CssType.propertyValue<'a>) => CssType.d<'b>;
};