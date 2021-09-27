type constructor<'declarationBlock> = [
  | CssStatement.constructor<'declarationBlock>
];

module Make = (
  Type: {
    type t<'data>;
    type declarationBlock<'data>;
  }
) => {
  module Statement = CssStatement.Make({
    type declarationBlock<'data> = Type.declarationBlock<'data>;
    let pseudoClassSelector = selector => selector;
  });

  external makeRules: Js.Dict.t<Type.declarationBlock<'data>> => Type.t<'data> = "%identity";

  let make = rules => {
    Belt.Array.map(rules, rule => {
      switch rule {
      | #...constructor as s => Statement.make(s)
      }
    })
    ->Js.Dict.fromArray
    ->makeRules
  };
}