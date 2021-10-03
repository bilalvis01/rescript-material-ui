type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssPropertyValueType.borderWidth<t>;
let value2: CssPropertyValueType.borderWidth2<t>;
let value3: CssPropertyValueType.borderWidth3<t>;
let value4: CssPropertyValueType.borderWidth4<t>;

module DeclarationHelper: {
  let borderWidth: CssPropertyValueType.borderWidth<d<'a>>;
  let borderWidth2: CssPropertyValueType.borderWidth2<d<'a>>;
  let borderWidth3: CssPropertyValueType.borderWidth3<d<'a>>;
  let borderWidth4: CssPropertyValueType.borderWidth4<d<'a>>;
  let borderWidthUnion: t => d<'a>;
  let borderWidthString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderWidthFn: ('data => option<t>) => dFn<'a, 'data>;
};