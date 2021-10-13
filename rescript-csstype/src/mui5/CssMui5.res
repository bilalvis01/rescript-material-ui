module Syntax = {  
  type styleDeclaration<'data> = [
    | CssType.Syntax.styleDeclaration<'data>
  ];

  type styleRule<'data> = [
    | CssType.Syntax.styleRule<'data>
  ];
};

module DeclarationBlock = CssDeclarationBlock.Make({
  type syntax<'data> = Syntax.styleDeclaration<'data>;
  let styleDeclaration = declaration => {
    switch declaration {
    | #...CssType.Syntax.styleDeclaration as d => CssStyleDeclaration.make(d)
    }
  }
});

module Statements = CssStatements.Make({
  type syntax<'data> = Syntax.styleRule<'data>;
  let styleRule = rule => {
    switch rule {
    | #...CssType.Syntax.styleRule as styleRule => CssStyleRule.make(styleRule)
    }
  };
});

let sx = DeclarationBlock.make;
let styles = Statements.make;

include CssHelper.Make({  
  type styleDeclaration<'data> = Syntax.styleDeclaration<'data>;
  let declarationBlock = DeclarationBlock.make; 
});