module Make = (
  R: {
    type syntax<'data>;
    let styleRule: syntax<'data> => CssType.styleRule<'data>;
  }
) => {
  external makeStatements: Js.Dict.t<CssType.declarationBlock<'data>> => 
    CssType.statements<'data> = "%identity";

  let make = rules => {
    rules
    ->Belt.Array.map(r => R.styleRule(r))
    ->Js.Dict.fromArray
    ->makeStatements
  };
};