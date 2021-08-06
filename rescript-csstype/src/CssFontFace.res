@unboxed
type rec boxValue = 
  | BoxValue('a): boxValue;

type t = Js.Dict.t<boxValue>;

let style = declarations => {
  declarations->Belt.Array.map(declaration => {
    switch declaration {
    | #FontDisplay(value) => ("fontDisplay", BoxValue(value))
    };
  })
  ->Js.Dict.fromArray
};

let fontDisplay = v => 
  #FontDisplay(CssFontFacePropertyValue.fontDisplay(v));
let fontDisplayString = v =>
  #FontDisplay(CssFontFacePropertyValue.fontDisplayString(v));