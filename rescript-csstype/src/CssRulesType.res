type rule<'declarations> = [
  | CssSelectorType.t<'declarations>
  | CssAtRuleType.t
  | CssPseudoClassType.t<'declarations>
];