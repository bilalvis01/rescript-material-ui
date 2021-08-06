type declaration<'style> = [
  | CssDeclarationType.property
  | CssSelectorType.t<'style>
  | CssPseudoClassType.t<'style>
  | CssAtRuleType.t
];