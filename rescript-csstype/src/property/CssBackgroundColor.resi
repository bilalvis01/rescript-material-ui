type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.backgroundColor<t>;

module DeclarationHelper: {
  let backgroundColor: CssType.backgroundColor<d<'a>>;
  let backgroundColorUnion: t => d<'a>;
  let backgroundColorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundColorFn: ('data => option<t>) => dFn<'a, 'data>;
};