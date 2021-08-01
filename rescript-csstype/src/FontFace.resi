type descriptor =
  | FontDisplay(FontFaceDescriptorValue.t_fontDisplay);

type t;

@unboxed
type rec boxValue = 
  | BoxValue('a): boxValue;

let make: array<descriptor> => t;

let fontDisplay: FontFaceType.fontDisplay => descriptor;
let fontDisplayString: string => descriptor;