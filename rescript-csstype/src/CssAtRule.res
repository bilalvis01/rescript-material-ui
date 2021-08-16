@unboxed
type rec boxDescriptors =
  | BoxDescriptors('a): boxDescriptors;

type t = (string, boxDescriptors);

let make = v => {
  switch v {
  | #FontFace(descriptor) => ("@font-face", BoxDescriptors(descriptor))
  }
};