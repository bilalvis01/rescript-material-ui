type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssValueType.fontWeight_global => t;

module DeclarationHelper: {
  let fontWeight: CssValueType.fontWeight_global => [> CssDeclaration.constructor ];
  let fontWeightUnion: t => [> CssDeclaration.constructor ];
  let fontWeightString: string => [> CssDeclaration.constructor ];
  let fontWeightNumber: float => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let fontWeightFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};