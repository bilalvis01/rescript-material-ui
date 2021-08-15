type t<'declarations> = [
  | CssDeclarationConstructor.t
  | CssSelectorType.t<'declarations>
  | CssPseudoClassConstructor.t<'declarations>
  | CssAtRuleConstructor.t
];