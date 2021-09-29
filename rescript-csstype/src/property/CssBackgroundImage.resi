type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.backgroundImage<t>;
let value2: CssPropertyValueType.backgroundImage2<t>;
let value3: CssPropertyValueType.backgroundImage3<t>;
let value4: CssPropertyValueType.backgroundImage4<t>;

module DeclarationHelper: {
  let backgroundImage: CssPropertyValueType.backgroundImage<d<'a>>;
  let backgroundImage2: CssPropertyValueType.backgroundImage2<d<'a>>;
  let backgroundImage3: CssPropertyValueType.backgroundImage3<d<'a>>;
  let backgroundImage4: CssPropertyValueType.backgroundImage4<d<'a>>;
  let backgroundImageUnion: t => d<'a>;
  let backgroundImageString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundImageFn: ('data => option<t>) => dFn<'a, 'data>;
};