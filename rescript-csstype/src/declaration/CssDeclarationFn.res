type value<'data, 'content> = 'data => option<CssValueType.propertyValue<'content>>;

@unboxed
type rec boxValue<'data> =
  | BoxValue(value<'data, 'content>): boxValue<'data>;

type constructor<'data> = [
  | #DeclarationFn(string, boxValue<'data>)
];

module Make = (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);
  
  external makeValue: boxValue<'data> => Type.value<'data> = "%identity";

  let make = declaration => {
    switch declaration {
    | #DeclarationFn(name, value) => (name, makeValue(value))
    };
  };
};

module Helper = {
  let declarationFn = (property, value) => #DeclarationFn(property, BoxValue(value));
};