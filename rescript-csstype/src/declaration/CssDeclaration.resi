@unboxed
type rec boxValue =
  | BoxValue(CssValueType.propertyValue<'a>): boxValue;

type constructor = [ 
  | #Declaration(string, boxValue) 
];

type t = (string, boxValue);

let make: constructor => t;

module Helper: {
  let declaration: 
    (string, CssValueType.propertyValue<'a>) => 
    [> constructor ];
};