module Make = (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  external makeDeclarations: Js.Dict.t<Type.value<'data>> => Type.t<'data> = "%identity";

  module Declaration = CssAdvancedDeclaration.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.t<'data>;
  });

  let make = declarations => {
    declarations->Belt.Array.map(declaration => {
      switch declaration {
      | #...CssAdvancedDeclarationConstructor.t as d => Declaration.make(d) 
      }
    })
    ->Js.Dict.fromArray
    ->makeDeclarations;
  };
};