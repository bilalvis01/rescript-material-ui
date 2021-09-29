type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.backgroundPosition<t>;
let value2: CssPropertyValueType.backgroundPosition2<t>;
let value3: CssPropertyValueType.backgroundPosition3<t>;
let value4: CssPropertyValueType.backgroundPosition4<t>;

module DeclarationHelper: {
  let backgroundPosition: CssPropertyValueType.backgroundPosition<d<'a>>;
  let backgroundPosition2: CssPropertyValueType.backgroundPosition2<d<'a>>;
  let backgroundPosition3: CssPropertyValueType.backgroundPosition3<d<'a>>;
  let backgroundPosition4: CssPropertyValueType.backgroundPosition4<d<'a>>;
  let backgroundPositionUnion: t => d<'a>;
  let backgroundPositionString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundPositionFn: ('data => option<t>) => dFn<'a, 'data>;
};