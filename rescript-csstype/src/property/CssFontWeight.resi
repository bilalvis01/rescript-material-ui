type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
external integer: int => t = "%identity";
let value: CssType.fontWeight<t>;

module DeclarationHelper: {
  let fontWeight: CssType.fontWeight<d<'a>>;
  let fontWeightUnion: t => d<'a>;
  let fontWeightString: string => d<'a>;
  let fontWeightInteger: int => d<'a>;
};

module DeclarationFnHelper: {
  let fontWeightFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};