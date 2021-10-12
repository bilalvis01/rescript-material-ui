type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.backgroundImage<t>;
let value2: CssType.Property.backgroundImage2<t>;
let value3: CssType.Property.backgroundImage3<t>;
let value4: CssType.Property.backgroundImage4<t>;

module DeclarationHelper: {
  let backgroundImage: CssType.Property.backgroundImage<CssType.d<'a>>;
  let backgroundImage2: CssType.Property.backgroundImage2<CssType.d<'a>>;
  let backgroundImage3: CssType.Property.backgroundImage3<CssType.d<'a>>;
  let backgroundImage4: CssType.Property.backgroundImage4<CssType.d<'a>>;
  let backgroundImageUnion: t => CssType.d<'a>;
  let backgroundImageString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundImageFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};