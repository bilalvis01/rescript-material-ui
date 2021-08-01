type descriptor =
  | FontDisplay(FontFaceDescriptorValue.t_fontDisplay);

@unboxed
type rec boxValue = 
  | BoxValue('a): boxValue;

type t = Js.Dict.t<boxValue>;

let make = descriptors => {
  let descriptors = descriptors->Belt.Array.map(descriptor => {
    switch descriptor {
    | FontDisplay(value) => ("fontDisplay", BoxValue(value))
    };
  });
  Js.Dict.fromArray(descriptors);
};

let fontDisplay = v => 
  FontDisplay(FontFaceDescriptorValue.fontDisplay(v));
let fontDisplayString = v =>
  FontDisplay(FontFaceDescriptorValue.fontDisplayString(v));