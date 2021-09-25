type value<'data, 'a> = 'data => option<CssValueType.propertyValue<'a>>;

@unboxed
type rec boxValue<'data> =
  | BoxValue(value<'data, 'a>): boxValue<'data>;

type constructor<'data> = [
  | #DeclarationFn(string, boxValue<'data>)
];

module Make = (
  D: {
    type value<'data>; 
    let map: ((string, boxValue<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, D.value<'data>);
  let { map } = module(D);
  let make = declaration => {
    switch declaration {
    | #DeclarationFn(name, value) => (name, value)
    }
    ->map;
  };
};

module Helper = {
  let declarationFn = (property, value) => #DeclarationFn(property, BoxValue(value));
};