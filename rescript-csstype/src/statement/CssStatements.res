external makeStatements: Js.Dict.t<CssType.declarationBlock<'data>> => 
  CssType.statements<'data> = "%identity";

let make = rules => {
  Belt.Array.map(rules, rule => {
    switch rule {
    | #...CssType.Syntax.styleRule as r => CssStyleRule.make(r)
    }
  })
  ->Js.Dict.fromArray
  ->makeStatements
};