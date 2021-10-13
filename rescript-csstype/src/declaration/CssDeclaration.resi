let make: CssType.Syntax.declaration => CssType.declaration;

external toStyleDeclaration: CssType.declaration => CssType.styleDeclaration<'data> = "%identity";

module Helper: {
  let declaration: (string, CssType.propertyValue<'a>) => CssType.Syntax.d<'b>;
};