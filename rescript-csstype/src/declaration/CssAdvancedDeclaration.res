module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  module Declaration = { 
    external toAdvancedDeclaration: CssDeclaration.t => t<'data> = "%identity";
    let make = v => CssDeclaration.make(v)->toAdvancedDeclaration;
  };

  module DeclarationFn = CssDeclarationFn.Make({
    type value<'data> = Type.value<'data>
  });

  module Rule = CssRule.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
  });

  module PseudoClass = CssPseudoClass.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
    let map = v => {
      let (selector, declarations) = v;
      (`&${selector}`, declarations);
    };
  });

  module AtRule = {
    external toDeclaration: CssAtRule.t => t<'data> = "%identity";
    let make = v => CssAtRule.make(v)->toDeclaration;
  };

  module Important = CssImportant.Make({
    type value<'data> = Type.value<'data>; 
  });

  let make = declaration => {
    switch declaration {
    | #...CssDeclarationConstructor.t as d => Declaration.make(d)
    | #...CssDeclarationFnConstructor.t as d => DeclarationFn.make(d)
    | #...CssRuleConstructor.t as d => Rule.make(d)
    | #...CssPseudoClassConstructor.t as d => PseudoClass.make(d)
    | #...CssAtRuleConstructor.t as d => AtRule.make(d)
    | #...CssImportantConstructor.t as d => Important.make(d)
    };
  };
};