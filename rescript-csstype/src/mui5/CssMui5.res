module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
  }
) => {
  module DeclarationBlocks = CssMui5DeclarationBlocks.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
  });

  let style = DeclarationBlocks.make;

  /*
  Property Value
  */
  module Property = CssProperty;
  module Background = CssBackground;
  module BackgroundAttachment = CssBackgroundAttachment;
  module BackgroundColor = CssBackgroundColor;
  module BackgroundImage = CssBackgroundImage;
  module BackgroundPosition = CssBackgroundPosition;
  module BackgroundStyle = CssBackgroundStyle;
  module Border = CssBorder;
  module BorderTop = CssBorderTop;
  module BorderRight = CssBorderRight;
  module BorderBottom = CssBorderBottom;
  module BorderLeft = CssBorderLeft;
  module BorderTopColor = CssBorderTopColor;
  module BorderRightColor = CssBorderRightColor;
  module BorderBottomColor = CssBorderBottomColor;
  module BorderLeftColor = CssBorderLeftColor;
  module BorderTopStyle = CssBorderTopStyle;
  module BorderRightStyle = CssBorderRightStyle;
  module BorderBottomStyle = CssBorderBottomStyle;
  module BorderLeftStyle = CssBorderLeftStyle;
  module BorderTopWidth = CssBorderTopWidth;
  module BorderRightWidth = CssBorderRightWidth;
  module BorderBottomWidth = CssBorderBottomWidth;
  module BorderLeftWidth = CssBorderLeftWidth;
  module BorderColor = CssBorderColor;
  module BorderStyle = CssBorderStyle;
  module BorderWidth = CssBorderWidth;
  module Clear = CssClear;
  module Color = CssColor;
  module Cursor = CssCursor;
  module FontFamily = CssFontFamily;
  module FontWeight = CssFontWeight;
  module Margin = CssMargin;
  module MarginTop = CssMarginTop;
  module MarginRight = CssMarginRight;
  module MarginBottom = CssMarginBottom;
  module MarginLeft = CssMarginLeft;
  module Padding = CssPadding;
  module PaddingTop = CssPaddingTop;
  module PaddingRight = CssPaddingRight;
  module PaddingBottom = CssPaddingBottom;
  module PaddingLeft = CssPaddingLeft;

  /*
  AtRule
  */
  module FontFace = CssFontFace;
  
  /*
  Helper
  */
  include CssValueHelper;
  include CssRule.MakeHelper({ 
    type declarationBlocks<'data> = Type.declarationBlocks<'data>; 
    type declarationConstructor<'data> = DeclarationBlocks.advancedDeclarationConstructor<'data>;
    let declarationBlocks = DeclarationBlocks.make; 
  });
  include CssAtRuleHelper;
  include CssPseudoClass.MakeHelper({ 
    type declarationBlocks<'data> = Type.declarationBlocks<'data>; 
    type declarationConstructor<'data> = DeclarationBlocks.advancedDeclarationConstructor<'data>;
    let declarationBlocks = DeclarationBlocks.make; 
  });
  include CssDeclarationHelper;
  include CssDeclarationFnHelper;
};