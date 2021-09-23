type value<'data, 'a> = 'data => option<CssValueType.propertyValue<'a>>;

@unboxed
type rec boxValue<'data> =
  | BoxValue(value<'data, 'a>): boxValue<'data>;

type constructor<'data> = [
  | #DeclarationFn(string, boxValue<'data>)
];

type t<'data> = (string, boxValue<'data>);

let make = declaration => {
  switch declaration {
  | #DeclarationFn(name, value) => (name, value)
  };
};

module Helper = {
  let declarationFn = (property, value) => #DeclarationFn(property, BoxValue(value));
};