type value<'data, 'content> = 'data => option<CssType.propertyValue<'content>>;

@unboxed
type rec boxValue<'data> =
  | BoxValue(value<'data, 'content>): boxValue<'data>;

type constructor<'data> = [
  | #DeclarationFn(string, boxValue<'data>)
];

module Make: (
  D: {
    type value<'data>; 
    let map: ((string, boxValue<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, D.value<'data>);
  let make: constructor<'data> => t<'data>;
};

module Helper: {
  let declarationFn: 
    (string, value<'data, 'content>) => 
    [> constructor<'data> ];
};