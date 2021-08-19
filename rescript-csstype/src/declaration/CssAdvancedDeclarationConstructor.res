type t<'data, 'declarationBlocks> = [
  | CssDeclarationConstructor.t
  | CssDeclarationFnConstructor.t<'data>
  | CssRuleConstructor.t<'declarationBlocks>
  | CssPseudoClassConstructor.t<'declarationBlocks>
  | CssAtRuleConstructor.t
  | CssImportantConstructor.t<'data>
];