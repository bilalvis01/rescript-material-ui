type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;


external string: string => t = "%identity";
let value: CssValueType.background<t>;
let value2: CssValueType.background2<t>;
let value3: CssValueType.background3<t>;
let value4: CssValueType.background4<t>;

module DeclarationHelper: {
  let background: CssValueType.background<d<'a>>;
  let background2: CssValueType.background2<d<'a>>;
  let background3: CssValueType.background3<d<'a>>;
  let background4: CssValueType.background4<d<'a>>;
  let backgroundUnion: t => d<'a>;
  let backgroundString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundFn: ('data => option<t>) => dFn<'a, 'data>;
};