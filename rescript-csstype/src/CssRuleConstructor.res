type rule<'declarations> = [
  | CssSelectorConstructor.t<'declarations>
  | CssAtRuleConstructor.t
  | CssPseudoClassConstructor.t<'declarations>
];