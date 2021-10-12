type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssType.Property.borderWidth<t>;
let value2: CssType.Property.borderWidth2<t>;
let value3: CssType.Property.borderWidth3<t>;
let value4: CssType.Property.borderWidth4<t>;

module DeclarationHelper: {
  let borderWidth: CssType.Property.borderWidth<CssDeclaration.d<'a>>;
  let borderWidth2: CssType.Property.borderWidth2<CssDeclaration.d<'a>>;
  let borderWidth3: CssType.Property.borderWidth3<CssDeclaration.d<'a>>;
  let borderWidth4: CssType.Property.borderWidth4<CssDeclaration.d<'a>>;
  let borderWidthUnion: t => CssDeclaration.d<'a>;
  let borderWidthString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};