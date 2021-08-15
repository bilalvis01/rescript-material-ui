type t<'declarations> = [
  | CssDeclarationConstructor.t
  | CssSelectorType.t<'declarations>
  | CssPseudoClassType.t<'declarations>
  | CssAtRuleConstructor.t
];