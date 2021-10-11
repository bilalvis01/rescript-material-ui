type d<'a> = [> CssType.declaration ] as 'a;

let make: CssType.declaration => CssType.declarationEntry;

external toStyleDeclaration: CssType.declarationEntry => CssType.styleDeclarationEntry<'data> = "%identity";

module Helper: {
  let declaration: (string, CssType.propertyValue<'a>) => d<'b>;
};