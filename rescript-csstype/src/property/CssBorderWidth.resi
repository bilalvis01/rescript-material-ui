type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssType.Property.borderWidth<t>;
let value2: CssType.Property.borderWidth2<t>;
let value3: CssType.Property.borderWidth3<t>;
let value4: CssType.Property.borderWidth4<t>;

module DeclarationHelper: {
  let borderWidth: CssType.Property.borderWidth<CssType.d<'a>>;
  let borderWidth2: CssType.Property.borderWidth2<CssType.d<'a>>;
  let borderWidth3: CssType.Property.borderWidth3<CssType.d<'a>>;
  let borderWidth4: CssType.Property.borderWidth4<CssType.d<'a>>;
  let borderWidthUnion: t => CssType.d<'a>;
  let borderWidthString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};