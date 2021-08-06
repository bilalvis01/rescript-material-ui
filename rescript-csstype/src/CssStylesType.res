type rule<'style> = [
  | CssSelectorType.t<'style>
  | CssAtRuleType.t
];