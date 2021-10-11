type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.backgroundPosition<t>;
let value2: CssType.backgroundPosition2<t>;
let value3: CssType.backgroundPosition3<t>;
let value4: CssType.backgroundPosition4<t>;

module DeclarationHelper: {
  let backgroundPosition: CssType.backgroundPosition<CssDeclaration.d<'a>>;
  let backgroundPosition2: CssType.backgroundPosition2<CssDeclaration.d<'a>>;
  let backgroundPosition3: CssType.backgroundPosition3<CssDeclaration.d<'a>>;
  let backgroundPosition4: CssType.backgroundPosition4<CssDeclaration.d<'a>>;
  let backgroundPositionUnion: t => CssDeclaration.d<'a>;
  let backgroundPositionString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundPositionFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};