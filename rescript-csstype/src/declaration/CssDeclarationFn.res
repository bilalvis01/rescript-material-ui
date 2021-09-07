module Make = (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);
  
  external makeValue: CssDeclarationFnConstructor.boxValue<'data> => Type.value<'data> = "%identity";

  let make = declaration => {
    switch declaration {
    | #DeclarationFn(name, value) => (name, makeValue(value))
    };
  };
};