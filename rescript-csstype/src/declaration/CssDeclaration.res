@unboxed
type rec boxValue =
  | BoxValue(CssType.propertyValue<'a>): boxValue;

type constructor = [ | #Declaration(string, boxValue) ];

module Make = (
  D: {
    type value<'data>; 
    let map: ((string, boxValue)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, D.value<'data>);
  let { map } = module(D);
  let make = declaration => {
    switch declaration {
    | #Declaration(property, value) => (property, value)
    }
    ->map;
  };
};

module Helper = {
  let declaration = (property, value) => 
    #Declaration(property, BoxValue(value));
};