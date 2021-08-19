module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  external makeValue: Type.declarationBlocks<'data> => Type.value<'data> = "%identity";

  let make = v => {
    switch v {
    | #Rule(selector, declarationBlocks) => (selector, makeValue(declarationBlocks));
    }
  };
}