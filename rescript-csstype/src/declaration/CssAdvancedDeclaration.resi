module Make: (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: CssAdvancedDeclarationConstructor.t<'data, Type.declarationBlocks<'data>> => t<'data>;
};