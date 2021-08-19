module Make: (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
    let map: ((string, value<'data>)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: CssPseudoClassConstructor.t<Type.declarationBlocks<'data>> => t<'data>;
}