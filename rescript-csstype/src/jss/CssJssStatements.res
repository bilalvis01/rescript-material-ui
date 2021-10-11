type styleRule<'data> = [
  | CssType.styleRule<'data>
];


external makeStatements: Js.Dict.t<CssType.declarationBlock<'data>> => CssType.statements<'data> = "%identity";

let make = rules => {
  Belt.Array.map(rules, rule => {
    switch rule {
    | #...CssType.styleRule as styleRule => CssStyleRule.make(styleRule)
    }
  })
  ->Js.Dict.fromArray
  ->makeStatements
};