module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
    type statementBlocks<'data>;
  }
) => {
  module DeclarationBlocks = CssAdvancedDeclarationBlocks.Make({ 
    type t<'data> = Type.declarationBlocks<'data>;
    type value<'data> = Type.value<'data>;
  });

  module StatementBlocks = CssStatementBlocks.Make({
    type t<'data> = Type.statementBlocks<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
  });

  let style = DeclarationBlocks.make;
  let styles = StatementBlocks.make;

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
  include CssRuleHelper.Make({ 
    type declarationBlocks<'data> = Type.declarationBlocks<'data>; 
    let declarationBlocks = DeclarationBlocks.make; 
  });
  include CssPseudoClassHelper.Make({ 
    type declarationBlocks<'data> = Type.declarationBlocks<'data>; 
    let declarationBlocks = DeclarationBlocks.make; 
  });
  include CssAtRuleHelper;
  include CssImportantHelper;

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
type declarationBlocks<'data>;
type statementBlocks<'data>;

include Make({
  type value<'data> = value<'data>;
  type declarationBlocks<'data> = declarationBlocks<'data>;
  type statementBlocks<'data> = statementBlocks<'data>;
});