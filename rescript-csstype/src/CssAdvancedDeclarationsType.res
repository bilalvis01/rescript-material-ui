type t<'style> = [
  | CssDeclarationType.t
  | CssSelectorType.t<'style>
  | CssPseudoClassType.t<'style>
  | CssAtRuleType.t
];