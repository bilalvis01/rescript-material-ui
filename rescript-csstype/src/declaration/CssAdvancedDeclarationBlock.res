type constructor<'data, 'declarationBlock> = [
  CssAdvancedDeclaration.constructor<'data, 'declarationBlock>
];

module Make = (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  module AdvancedDeclaration = CssAdvancedDeclaration.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlock<'data> = Type.t<'data>;
  });

  external makeDeclarationBlock: Js.Dict.t<Type.value<'data>> => Type.t<'data> = "%identity";

  let make = declarations => {
    declarations
    ->Belt.Array.map(declaration => {
      switch declaration {
      | #...CssAdvancedDeclaration.constructor as d => AdvancedDeclaration.make(d) 
      }
    })
    ->Js.Dict.fromArray
    ->makeDeclarationBlock;
  };
};