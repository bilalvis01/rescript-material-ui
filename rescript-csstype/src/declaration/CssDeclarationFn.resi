type value<'data, 'content> = 'data => option<CssValueType.propertyValue<'content>>;

@unboxed
type rec boxValue<'data> =
  | BoxValue(value<'data, 'content>): boxValue<'data>;

type constructor<'data> = [
  | #DeclarationFn(string, boxValue<'data>)
];

module Make: (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: constructor<'data> => t<'data>;
};

module Helper: {
  let declarationFn: 
    (string, value<'data, 'content>) => 
    [> constructor<'data> ];
};