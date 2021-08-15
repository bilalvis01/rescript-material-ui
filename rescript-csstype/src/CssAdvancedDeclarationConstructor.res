type t<'declarations> = [
  | CssDeclarationConstructor.t
  | CssSelectorConstructor.t<'declarations>
  | CssPseudoClassConstructor.t<'declarations>
  | CssAtRuleConstructor.t
];