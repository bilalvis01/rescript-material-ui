type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.color_global => t;

module DeclarationHelper: {
  let color: CssValueType.color_global => [> CssDeclaration.constructor ];
  let colorUnion: t => [> CssDeclaration.constructor ];
  let colorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let colorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};