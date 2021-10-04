type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.borderStyle<t>;
let value2: CssType.borderStyle2<t>;
let value3: CssType.borderStyle3<t>;
let value4: CssType.borderStyle4<t>;

module DeclarationHelper: {
  let borderStyle: CssType.borderStyle<d<'a>>;
  let borderStyle2: CssType.borderStyle2<d<'a>>;
  let borderStyle3: CssType.borderStyle3<d<'a>>;
  let borderStyle4: CssType.borderStyle4<d<'a>>;
  let borderStyleUnion: t => d<'a>;
  let borderStyleString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderStyleFn: ('data => option<t>) => dFn<'a, 'data>;
};