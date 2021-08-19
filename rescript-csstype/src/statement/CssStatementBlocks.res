module Make = (
  Type: {
    type t<'data>;
    type declarationBlocks<'data>;
  }
) => {
  module Statement = CssStatement.Make({
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
  });

  external makeRules: Js.Dict.t<Type.declarationBlocks<'data>> => Type.t<'data> = "%identity";

  let make = rules => {
    Belt.Array.map(rules, rule => {
      switch rule {
      | #...CssStatementConstructor.t as s => Statement.make(s)
      }
    })
    ->Js.Dict.fromArray
    ->makeRules
  };
}