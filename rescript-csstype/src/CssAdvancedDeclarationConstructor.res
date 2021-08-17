type t<'data, 'declarations> = [
  | CssDeclarationConstructor.t
  | CssDeclarationFnConstructor.t<'data>
  | CssSelectorConstructor.t<'declarations>
  | CssPseudoClassConstructor.t<'declarations>
  | CssAtRuleConstructor.t
  | CssImportantConstructor.t<'data>
];