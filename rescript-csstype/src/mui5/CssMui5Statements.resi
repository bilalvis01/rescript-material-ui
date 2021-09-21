module Make: (
  Type: {
    type t<'data>;
    type declarationBlock<'data>;
  }
) => {
  type statementConstructor<'declarationBlock> = [
    | CssRule.constructor<'declarationBlock>
    | CssAtRule.constructor
    | CssPseudoClass.constructor<'declarationBlock>
  ];

  let make: array<statementConstructor<Type.declarationBlock<'data>>> => Type.t<'data>;
}