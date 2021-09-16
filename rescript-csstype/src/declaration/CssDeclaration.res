@unboxed
type rec boxValue =
  | BoxValue(CssValueType.propertyValue<'a>): boxValue;

type constructor = [ | #Declaration(string, boxValue) ];

type t = (string, boxValue);

let make = declaration => {
  switch declaration {
  | #Declaration(property, value) => (property, value)
  };
};

module Helper = {
  let declaration = (property, value) => 
    #Declaration(property, BoxValue(value));
};