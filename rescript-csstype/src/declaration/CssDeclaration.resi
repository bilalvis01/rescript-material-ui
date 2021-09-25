@unboxed
type rec boxValue =
  | BoxValue(CssValueType.propertyValue<'a>): boxValue;

type constructor = [ 
  | #Declaration(string, boxValue) 
];

module Make: (
  D: {
    type value<'data>; 
    let map: ((string, boxValue)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, D.value<'data>);
  let make: constructor => t<'data>;
};

module Helper: {
  let declaration: 
    (string, CssValueType.propertyValue<'a>) => 
    [> constructor ];
};