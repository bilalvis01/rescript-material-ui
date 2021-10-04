type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;


external string: string => t = "%identity";
let value: CssType.background<t>;
let value2: CssType.background2<t>;
let value3: CssType.background3<t>;
let value4: CssType.background4<t>;

module DeclarationHelper: {
  let background: CssType.background<d<'a>>;
  let background2: CssType.background2<d<'a>>;
  let background3: CssType.background3<d<'a>>;
  let background4: CssType.background4<d<'a>>;
  let backgroundUnion: t => d<'a>;
  let backgroundString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundFn: ('data => option<t>) => dFn<'a, 'data>;
};