module Make = (
  D: {
    type syntax<'data>;
    let styleDeclaration: syntax<'data> => CssType.styleDeclaration<'data>;
  }
) => {
  external makeDeclarationBlock: Js.Dict.t<CssType.value<'data>> => 
    CssType.declarationBlock<'data> = "%identity";

  let make = declarations => {
    declarations
    ->Belt.Array.map(d => D.styleDeclaration(d))
    ->Js.Dict.fromArray
    ->makeDeclarationBlock;
  };
};