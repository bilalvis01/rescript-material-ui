type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.backgroundImage<t>;
let value2: CssType.backgroundImage2<t>;
let value3: CssType.backgroundImage3<t>;
let value4: CssType.backgroundImage4<t>;

module DeclarationHelper: {
  let backgroundImage: CssType.backgroundImage<d<'a>>;
  let backgroundImage2: CssType.backgroundImage2<d<'a>>;
  let backgroundImage3: CssType.backgroundImage3<d<'a>>;
  let backgroundImage4: CssType.backgroundImage4<d<'a>>;
  let backgroundImageUnion: t => d<'a>;
  let backgroundImageString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundImageFn: ('data => option<t>) => dFn<'a, 'data>;
};