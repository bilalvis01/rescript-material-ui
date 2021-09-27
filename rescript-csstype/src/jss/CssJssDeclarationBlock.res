type constructor<'data, 'declarationBlock> = [
  | CssAdvancedDeclaration.constructor<'data, 'declarationBlock>
  | CssJssImportant.constructor<'data>
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

  module Important = CssJssImportant.Make({
    type value<'data> = Type.value<'data>;
  });

  external makeDeclarationBlock: Js.Dict.t<Type.value<'data>> => Type.t<'data> = "%identity";

  let make = declarations => {
    declarations
    ->Belt.Array.map(declaration => {
      switch declaration {
      | #...CssAdvancedDeclaration.constructor as d => AdvancedDeclaration.make(d)
      | #...CssJssImportant.constructor as d => Important.make(d)
      }
    })
    ->Js.Dict.fromArray
    ->makeDeclarationBlock;
  };
};