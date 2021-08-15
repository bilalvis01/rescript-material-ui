type rule<'declarations> = [
  | CssSelectorType.t<'declarations>
  | CssAtRuleConstructor.t
  | CssPseudoClassType.t<'declarations>
];