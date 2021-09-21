module Make = (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
    type statementBlocks<'data>;
  }
) => {
  module DeclarationBlock = CssMui5DeclarationBlock.Make({
    type t<'data> = Type.declarationBlock<'data>;
    type value<'data> = Type.value<'data>;
  });

  module StatementBlocks = CssMui5StatementBlocks.Make({
    type t<'data> = Type.declarationBlock<'data>;
    type declarationBlock<'data> = Type.declarationBlock<'data>;
  });

  let style = DeclarationBlock.make;
  let styles = StatementBlocks.make;

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
    type declarationBlock<'data> = Type.declarationBlock<'data>; 
    type declarationConstructor<'data> = DeclarationBlock.advancedDeclarationConstructor<'data>;
    let declarationBlock = DeclarationBlock.make; 
  });
  include CssAtRuleHelper;
  include CssPseudoClass.MakeHelper({ 
    type declarationBlock<'data> = Type.declarationBlock<'data>; 
    type declarationConstructor<'data> = DeclarationBlock.advancedDeclarationConstructor<'data>;
    let declarationBlock = DeclarationBlock.make; 
  });
  include CssDeclarationHelper;
  include CssDeclarationFnHelper;
};