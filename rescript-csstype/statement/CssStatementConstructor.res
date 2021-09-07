type t<'declarationBlocks> = [
  | CssRuleConstructor.t<'declarationBlocks>
  | CssAtRuleConstructor.t
  | CssPseudoClassConstructor.t<'declarationBlocks>
];