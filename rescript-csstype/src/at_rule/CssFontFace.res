@unboxed
type rec boxValue = 
  | BoxValue('a): boxValue;

type t = Js.Dict.t<boxValue>;

let descriptors = descriptors => {
  descriptors
  ->Belt.Array.map(descriptor => {
    switch descriptor {
    | #FontDisplay(value) => ("fontDisplay", BoxValue(value))
    };
  })
  ->Js.Dict.fromArray
};

let fontDisplay = v => 
  #FontDisplay(CssFontFacePropertyValue.fontDisplay(v));
let fontDisplayString = v =>
  #FontDisplay(CssFontFacePropertyValue.fontDisplayString(v));