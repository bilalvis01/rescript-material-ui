type descriptor =
  | FontDisplay(CssFontFacePropertyValue.t_fontDisplay);

type t;

@unboxed
type rec boxValue = 
  | BoxValue('a): boxValue;

let make: array<descriptor> => t;

let fontDisplay: CssFontFaceValueType.fontDisplay => descriptor;
let fontDisplayString: string => descriptor;