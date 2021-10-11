type d<'a, 'data> = [> CssType.declarationFn<'data> ] as 'a;

let make: CssType.declarationFn<'data> => CssType.declarationFnEntry<'data>;

external toStyleDeclaration: CssType.declarationFnEntry<'data> => CssType.styleDeclarationEntry<'data> = "%identity";

module Helper: {
  let declarationFn: (string, CssType.propertyValueFn<'a, 'data>) => d<'b, 'data>;
};