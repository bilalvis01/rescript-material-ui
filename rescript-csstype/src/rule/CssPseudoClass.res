module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
    let map: ((string, value<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  external makeValue: Type.declarationBlocks<'data> => Type.value<'data> = "%identity";

  let make = v => {
    switch v {
    | #Hover(declarationBlocks) => (":hover", makeValue(declarationBlocks))
    }
    ->Type.map
  };
}