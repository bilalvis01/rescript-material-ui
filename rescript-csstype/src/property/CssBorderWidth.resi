type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssType.borderWidth<t>;
let value2: CssType.borderWidth2<t>;
let value3: CssType.borderWidth3<t>;
let value4: CssType.borderWidth4<t>;

module DeclarationHelper: {
  let borderWidth: CssType.borderWidth<d<'a>>;
  let borderWidth2: CssType.borderWidth2<d<'a>>;
  let borderWidth3: CssType.borderWidth3<d<'a>>;
  let borderWidth4: CssType.borderWidth4<d<'a>>;
  let borderWidthUnion: t => d<'a>;
  let borderWidthString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderWidthFn: ('data => option<t>) => dFn<'a, 'data>;
};