module Make = (
  Type: {
    type value;
    type declarations;
    type rules;
  }
) => {
  module PropertyValue = CssPropertyValue;
  module FontFace = CssFontFace;

  module Declarations = CssAdvancedDeclarations.Make({ 
    type t = Type.declarations;
    type value = Type.value;
  });

  module Rules = CssRules.Make({
    type t = Type.rules;
    type declarations = Type.declarations;
  });

  include CssDeclarationHelper;
  include CssSelectorHelper.Make({ 
    type declarations = Type.declarations; 
    let declarations = Declarations.make; 
  });
  include CssPseudoClassHelper.Make({ 
    type declarations = Type.declarations; 
    let declarations = Declarations.make; 
  });
  include CssValueHelper;
  include CssAtRuleHelper;
}

type value;
type declarations;
type rules;

include Make({
  type value = value;
  type declarations = declarations;
  type rules = rules;
});

let style = Declarations.make;
let styles = Rules.make;