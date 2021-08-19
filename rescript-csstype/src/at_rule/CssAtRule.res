type t = (string, CssAtRuleConstructor.boxDescriptors);

let make = v => {
  switch v {
  | #FontFace(descriptor) => ("@font-face", CssAtRuleConstructor.BoxDescriptors(descriptor))
  }
};