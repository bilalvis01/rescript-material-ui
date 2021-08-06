module Make = (
  Type: {
    type descriptor;
  }
) => {
  type t = (string, Type.descriptor);
  external makeDescriptor: 'a => Type.descriptor = "%identity";
  let make = v => {
    switch v {
    | #FontFace(descriptor) => ("@font-face", makeDescriptor(descriptor))
    }
  };
};