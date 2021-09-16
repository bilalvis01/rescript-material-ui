type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssValueType.clear_global => t;

module DeclarationHelper: {
  let clear: CssValueType.clear_global => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let clearFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};