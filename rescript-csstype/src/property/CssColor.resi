type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.color<t>;

module DeclarationHelper: {
  let color: CssType.color<d<'a>>;
  let colorUnion: t => d<'a>;
  let colorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let colorFn: ('data => option<t>) => dFn<'a, 'data>;
};