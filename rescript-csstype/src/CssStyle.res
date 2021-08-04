module Make = (
  Type: {
    type t;
    type value;
  }
) => {
  external makeValue: 'a => Type.value = "%identity";

  module Declaration = CssDeclaration.Make({ 
    type value = Type.value;
  });

  external makeStyle: Js.Dict.t<Type.value> => Type.t = "%identity";
  let make = declarations => {
    declarations->Belt.Array.map(declaration => {
      switch declaration {
      | #...CssDeclarationType.properties as p => Declaration.make(p)
      | #Selector(selector, style) => (selector, makeValue(style))
      | #Hover(style) => ("&:hover", makeValue(style))
      | #FontFace(descriptor) => ("@font-face", makeValue(descriptor))
      };
    })
    ->Js.Dict.fromArray
    ->makeStyle;
  };
};