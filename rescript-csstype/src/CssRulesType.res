type rule<'declarations> = [
  | CssSelectorType.t<'declarations>
  | CssAtRuleConstructor.t
  | CssPseudoClassConstructor.t<'declarations>
];