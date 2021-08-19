type t;

@unboxed
type rec boxValue = 
  | BoxValue('a): boxValue;

let descriptors: array<CssFontFaceDescriptor.t> => t;

let fontDisplay: CssFontFaceValueType.fontDisplay => [> CssFontFaceDescriptor.fontDisplay ];
let fontDisplayString: string => [ CssFontFaceDescriptor.fontDisplay ];