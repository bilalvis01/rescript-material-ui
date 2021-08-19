module Make = (
  Type: {
    type declarationBlocks<'data>;
  }
) => {
  type t<'data> = (string, Type.declarationBlocks<'data>);

  module Rule = CssRule.Make({ 
    type value<'data> = Type.declarationBlocks<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
  });

  module AtRule = {
    external toStatement: CssAtRule.t => t<'data> = "%identity";
    let make = v => CssAtRule.make(v)->toStatement;
  };

  module PseudoClass = CssPseudoClass.Make({
    type value<'data> = Type.declarationBlocks<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
    let map = v => {
      let (selector, declarations) = v;
      (`@global ${selector}`, declarations);
    };
  });

  let make = statement => {
    switch statement {
    | #...CssRuleConstructor.t as s => Rule.make(s)
    | #...CssAtRuleConstructor.t as s => AtRule.make(s)
    | #...CssPseudoClassConstructor.t as s => PseudoClass.make(s)
    }
  };
}