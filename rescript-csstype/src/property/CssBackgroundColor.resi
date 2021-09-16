type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.color => t;

module DeclarationHelper: {
  let backgroundColor: CssValueType.color => [> CssDeclaration.constructor ];
  let backgroundColorUnion: t => [> CssDeclaration.constructor ];
  let backgroundColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};