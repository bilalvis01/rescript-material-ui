module Make: (
  Type: {
    type t<'data>;
    type declarationBlocks<'data>;
  }
) => {
  type statementConstructor<'declarationBlocks> = [
    | CssRule.constructor<'declarationBlocks>
    | CssAtRule.constructor
    | CssPseudoClass.constructor<'declarationBlocks>
  ];

  let make: array<statementConstructor<Type.declarationBlocks<'data>>> => Type.t<'data>;
}