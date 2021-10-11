type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssType.borderWidth<t>;
let value2: CssType.borderWidth2<t>;
let value3: CssType.borderWidth3<t>;
let value4: CssType.borderWidth4<t>;

module DeclarationHelper: {
  let borderWidth: CssType.borderWidth<CssDeclaration.d<'a>>;
  let borderWidth2: CssType.borderWidth2<CssDeclaration.d<'a>>;
  let borderWidth3: CssType.borderWidth3<CssDeclaration.d<'a>>;
  let borderWidth4: CssType.borderWidth4<CssDeclaration.d<'a>>;
  let borderWidthUnion: t => CssDeclaration.d<'a>;
  let borderWidthString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let borderWidthFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};