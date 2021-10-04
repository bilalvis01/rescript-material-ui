type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.borderColor<t>;
let value2: CssPropertyValueType.borderColor2<t>;
let value3: CssPropertyValueType.borderColor3<t>;
let value4: CssPropertyValueType.borderColor4<t>

module DeclarationHelper: {
  let borderColor: CssPropertyValueType.borderColor<d<'a>>;
  let borderColor2: CssPropertyValueType.borderColor2<d<'a>>;
  let borderColor3: CssPropertyValueType.borderColor3<d<'a>>;
  let borderColor4: CssPropertyValueType.borderColor4<d<'a>>;
  let borderColorUnion: t => d<'a>;
  let borderColorString: string => d<'a>;
};

module DeclarationFnHelper: {
  let borderColorFn: ('data => option<t>) => dFn<'a, 'data>;
};