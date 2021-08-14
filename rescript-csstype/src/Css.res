module Make = (
  Type: {
    type value;
    type declarations;
    type rules;
  }
) => {
  module Declarations = CssAdvancedDeclarations.Make({ 
    type t = Type.declarations;
    type value = Type.value;
  });

  module Rules = CssRules.Make({
    type t = Type.rules;
    type declarations = Type.declarations;
  });

  /*
  Helper
  */
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

  /*
  Property Value
  */
  module Background = CssBackground;
  module BackgroundAttachment = CssBackgroundAttachment;
  module BackgroundColor = CssBackgroundColor;
  module BackgroundImage = CssBackgroundImage;
  module BackgroundPosition = CssBackgroundPosition;
  module BackgroundStyle = CssBackgroundStyle;
  module Border = CssBorder;
  module BorderBottomColor = CssBorderBottomColor;
  module BorderBottomStyle = CssBorderBottomStyle;
  module BorderBottomWidth = CssBorderBottomWidth;
  module BorderColor = CssBorderColor;
  module BorderLeftColor = CssBorderLeftColor;
  module BorderLeftStyle = CssBorderLeftStyle;
  module BorderLeftWidth = CssBorderLeftWidth;
  module BorderRightColor = CssBorderRightColor;
  module BorderRightStyle = CssBorderRightStyle;
  module BorderRightWidth = CssBorderRightWidth;
  module BorderStyle = CssBorderStyle;
  module BorderTopColor = CssBorderTopColor;
  module BorderTopStyle = CssBorderTopStyle;
  module BorderTopWidth = CssBorderTopWidth;
  module BorderWidth = CssBorderWidth;
  module Clear = CssClear;
  module Color = CssColor;
  module Cursor = CssCursor;
  module FontFamily = CssFontFamily;
  module FontWeight = CssFontWeight;
  module Margin = CssMargin;
  module MarginBottom = CssMarginBottom;
  module MarginLeft = CssMarginLeft;
  module MarginRight = CssMarginRight;
  module MarginTop = CssMarginTop;
  module Padding = CssPadding;
  module PaddingBottom = CssPaddingBottom;
  module PaddingLeft = CssPaddingLeft;
  module PaddingRight = CssPaddingRight;
  module PaddingTop = CssPaddingTop;

  /*
  At rule
  */
  module FontFace = CssFontFace;
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