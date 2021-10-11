type styleDeclaration<'data> = [
  CssType.styleDeclaration<'data>
];

external makeDeclarationBlock: Js.Dict.t<CssType.value<'data>> => CssType.declarationBlock<'data> = "%identity";

let make = declarations => {
  declarations
  ->Belt.Array.map(declaration => {
    switch declaration {
    | #...CssType.styleDeclaration as d => CssStyleDeclaration.make(d) 
    }
  })
  ->Js.Dict.fromArray
  ->makeDeclarationBlock;
};