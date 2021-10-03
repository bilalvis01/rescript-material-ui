type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.clear<t>;

module DeclarationHelper: {
  let clear: CssPropertyValueType.clear<d<'a>>;
  let clearUnion: t => d<'a>;
  let clearString: string => d<'a>;
};

module DeclarationFnHelper: {
  let clearFn: ('data => option<t>) => dFn<'a, 'data>;
};