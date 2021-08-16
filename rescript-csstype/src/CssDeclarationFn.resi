type t<'data> = (string, CssDeclarationFnConstructor.boxValue<'data>);

let make: CssDeclarationFnConstructor.t<'data> => t<'data>;