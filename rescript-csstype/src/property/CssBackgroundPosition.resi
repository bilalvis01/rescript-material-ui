type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.backgroundPosition<t>;
let value2: CssType.backgroundPosition2<t>;
let value3: CssType.backgroundPosition3<t>;
let value4: CssType.backgroundPosition4<t>;

module DeclarationHelper: {
  let backgroundPosition: CssType.backgroundPosition<d<'a>>;
  let backgroundPosition2: CssType.backgroundPosition2<d<'a>>;
  let backgroundPosition3: CssType.backgroundPosition3<d<'a>>;
  let backgroundPosition4: CssType.backgroundPosition4<d<'a>>;
  let backgroundPositionUnion: t => d<'a>;
  let backgroundPositionString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundPositionFn: ('data => option<t>) => dFn<'a, 'data>;
};