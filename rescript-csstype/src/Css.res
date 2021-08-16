module Make = (
  Type: {
    type value<'data>;
    type declarations<'data>;
    type rules<'data>;
  }
) => {
  module Declarations = CssAdvancedDeclarations.Make({ 
    type t<'data> = Type.declarations<'data>;
    type value<'data> = Type.value<'data>;
  });

  module Rules = CssRules.Make({
    type t<'data> = Type.rules<'data>;
    type declarations<'data> = Type.declarations<'data>;
  });

  let style = Declarations.make;
  let styles = Rules.make;

  /*
  Type
  */
  module ValueType = CssValueType;

  /*
  Helper
  */
  include CssValueHelper;
  include CssDeclarationHelper;
  include CssDeclarationFnHelper;
  include CssSelectorHelper.Make({ 
    type declarations<'data> = Type.declarations<'data>; 
    let declarations = Declarations.make; 
  });
  include CssPseudoClassHelper.Make({ 
    type declarations<'data> = Type.declarations<'data>; 
    let declarations = Declarations.make; 
  });
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

type value<'data>;
type declarations<'data>;
type rules<'data>;

include Make({
  type value<'data> = value<'data>;
  type declarations<'data> = declarations<'data>;
  type rules<'data> = rules<'data>;
});