type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.backgroundImage<t>;
let value2: CssType.backgroundImage2<t>;
let value3: CssType.backgroundImage3<t>;
let value4: CssType.backgroundImage4<t>;

module DeclarationHelper: {
  let backgroundImage: CssType.backgroundImage<CssDeclaration.d<'a>>;
  let backgroundImage2: CssType.backgroundImage2<CssDeclaration.d<'a>>;
  let backgroundImage3: CssType.backgroundImage3<CssDeclaration.d<'a>>;
  let backgroundImage4: CssType.backgroundImage4<CssDeclaration.d<'a>>;
  let backgroundImageUnion: t => CssDeclaration.d<'a>;
  let backgroundImageString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundImageFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};