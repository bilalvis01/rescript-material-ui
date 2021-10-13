type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.backgroundPosition<t>;
let value2: CssType.Property.backgroundPosition2<t>;
let value3: CssType.Property.backgroundPosition3<t>;
let value4: CssType.Property.backgroundPosition4<t>;

module DeclarationHelper: {
  let backgroundPosition: CssType.Property.backgroundPosition<CssType.Syntax.d<'a>>;
  let backgroundPosition2: CssType.Property.backgroundPosition2<CssType.Syntax.d<'a>>;
  let backgroundPosition3: CssType.Property.backgroundPosition3<CssType.Syntax.d<'a>>;
  let backgroundPosition4: CssType.Property.backgroundPosition4<CssType.Syntax.d<'a>>;
  let backgroundPositionUnion: t => CssType.Syntax.d<'a>;
  let backgroundPositionString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundPositionFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};