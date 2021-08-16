@unboxed
type rec boxDescriptors =
  | BoxDescriptors('a): boxDescriptors;

type fontFace = [ | #FontFace(CssFontFace.t) ];

type t = [
  | fontFace
];