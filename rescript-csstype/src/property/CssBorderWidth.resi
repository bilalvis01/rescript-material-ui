type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssType.Property.borderWidth<t>;
let value2: CssType.Property.borderWidth2<t>;
let value3: CssType.Property.borderWidth3<t>;
let value4: CssType.Property.borderWidth4<t>;

module DeclarationHelper: {
  let borderWidth: CssType.Property.borderWidth<CssType.Syntax.d<'a>>;
  let borderWidth2: CssType.Property.borderWidth2<CssType.Syntax.d<'a>>;
  let borderWidth3: CssType.Property.borderWidth3<CssType.Syntax.d<'a>>;
  let borderWidth4: CssType.Property.borderWidth4<CssType.Syntax.d<'a>>;
  let borderWidthUnion: t => CssType.Syntax.d<'a>;
  let borderWidthString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderWidthFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};