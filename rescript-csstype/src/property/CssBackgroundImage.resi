type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssValueType.backgroundImage<t>;
let value2: CssValueType.backgroundImage2<t>;
let value3: CssValueType.backgroundImage3<t>;
let value4: CssValueType.backgroundImage4<t>;

module DeclarationHelper: {
  let backgroundImage: CssValueType.backgroundImage<d<'a>>;
  let backgroundImage2: CssValueType.backgroundImage2<d<'a>>;
  let backgroundImage3: CssValueType.backgroundImage3<d<'a>>;
  let backgroundImage4: CssValueType.backgroundImage4<d<'a>>;
  let backgroundImageUnion: t => d<'a>;
  let backgroundImageString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundImageFn: ('data => option<t>) => dFn<'a, 'data>;
};