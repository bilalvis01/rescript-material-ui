type t;

@unboxed
type rec boxValue = 
  | BoxValue('a): boxValue;

let style: array<CssFontFaceType.property> => t;

let fontDisplay: CssFontFaceValueType.fontDisplay => [> CssFontFaceType.fontDisplay ];
let fontDisplayString: string => [ CssFontFaceType.fontDisplay ];