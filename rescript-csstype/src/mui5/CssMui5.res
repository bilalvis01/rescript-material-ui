module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
  }
) => {
  type advancedDeclarationConstructorLike<'data, 'declarationBlocks> = [
    | CssDeclarationConstructor.t
    | CssDeclarationFnConstructor.t<'data>
    | CssRuleConstructor.t<'declarationBlocks>
    | CssPseudoClassConstructor.t<'declarationBlocks>
    | CssAtRuleConstructor.t
  ];

  type advancedDeclarationConstructor<'data> = 
    advancedDeclarationConstructorLike<'data, Type.declarationBlocks<'data>>;

  type advancedDeclaration<'data> = (string, Type.value<'data>);

  module Declaration = { 
    external toAdvancedDeclaration: CssDeclaration.t => advancedDeclaration<'data> = "%identity";
    let make = v => CssDeclaration.make(v)->toAdvancedDeclaration;
  };

  module DeclarationFn = CssDeclarationFn.Make({
    type value<'data> = Type.value<'data>
  });

  module PseudoClass = CssPseudoClass.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
    let map = v => {
      let (selector, declarations) = v;
      (`&${selector}`, declarations);
    };
  });

  module Rule = CssRule.Make({
    type value<'data> = Type.value<'data>;
    type declarationBlocks<'data> = Type.declarationBlocks<'data>;
  });

  module AtRule = {
    external toDeclaration: CssAtRule.t => advancedDeclaration<'data> = "%identity";
    let make = v => CssAtRule.make(v)->toDeclaration;
  };

  module AdvancedDeclaration: {
    let make: advancedDeclarationConstructor<'data> => advancedDeclaration<'data>;
  } = {
    let make = declaration => {
      switch declaration {
      | #...CssDeclarationConstructor.t as d => Declaration.make(d)
      | #...CssDeclarationFnConstructor.t as d => DeclarationFn.make(d)
      | #...CssRuleConstructor.t as d => Rule.make(d)
      | #...CssPseudoClassConstructor.t as d => PseudoClass.make(d)
      | #...CssAtRuleConstructor.t as d => AtRule.make(d)
      };
    };
  };

  module DeclarationBlocks: {
    let make: array<advancedDeclarationConstructor<'data>> => Type.declarationBlocks<'data>;
  } = {
    external makeDeclarations: Js.Dict.t<Type.value<'data>> => Type.declarationBlocks<'data> = "%identity";

    let make = declarations => {
      declarations->Belt.Array.map(declaration => {
        switch declaration {
        | #...advancedDeclarationConstructor as d => AdvancedDeclaration.make(d) 
        }
      })
      ->Js.Dict.fromArray
      ->makeDeclarations;
    };
  };

  let style = DeclarationBlocks.make;

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
  include CssRuleHelper.Make({ 
    type declarationBlocks<'data> = Type.declarationBlocks<'data>; 
    type declarationConstructor<'data> = advancedDeclarationConstructor<'data>;
    let declarationBlocks = DeclarationBlocks.make; 
  });
  include CssAtRuleHelper;
  include CssPseudoClassHelper.Make({ 
    type declarationBlocks<'data> = Type.declarationBlocks<'data>; 
    type declarationConstructor<'data> = advancedDeclarationConstructor<'data>;
    let declarationBlocks = DeclarationBlocks.make; 
  });
  include Background.DeclarationFnHelper;
  include BackgroundAttachment.DeclarationFnHelper;
  include BackgroundColor.DeclarationFnHelper;
  include BackgroundImage.DeclarationFnHelper;
  include BackgroundPosition.DeclarationFnHelper;
  include BackgroundStyle.DeclarationFnHelper;
  include Border.DeclarationFnHelper;
  include BorderTop.DeclarationFnHelper;
  include BorderRight.DeclarationFnHelper;
  include BorderBottom.DeclarationFnHelper;
  include BorderLeft.DeclarationFnHelper;
  include BorderTopColor.DeclarationFnHelper;
  include BorderRightColor.DeclarationFnHelper;
  include BorderBottomColor.DeclarationFnHelper;
  include BorderLeftColor.DeclarationFnHelper;
  include BorderTopStyle.DeclarationFnHelper;
  include BorderRightStyle.DeclarationFnHelper;
  include BorderBottomStyle.DeclarationFnHelper;
  include BorderLeftStyle.DeclarationFnHelper;
  include BorderTopWidth.DeclarationFnHelper;
  include BorderRightWidth.DeclarationFnHelper;
  include BorderBottomWidth.DeclarationFnHelper;
  include BorderLeftWidth.DeclarationFnHelper;
  include BorderColor.DeclarationFnHelper;
  include BorderStyle.DeclarationFnHelper;
  include BorderWidth.DeclarationFnHelper;
  include Clear.DeclarationFnHelper;
  include Color.DeclarationFnHelper;
  include Cursor.DeclarationFnHelper;
  include FontFamily.DeclarationFnHelper;
  include FontWeight.DeclarationFnHelper;
  include Margin.DeclarationFnHelper;
  include MarginTop.DeclarationFnHelper;
  include MarginRight.DeclarationFnHelper;
  include MarginBottom.DeclarationFnHelper;
  include MarginLeft.DeclarationFnHelper;
  include Padding.DeclarationFnHelper;
  include PaddingTop.DeclarationFnHelper;
  include PaddingRight.DeclarationFnHelper;
  include PaddingBottom.DeclarationFnHelper;
  include PaddingLeft.DeclarationFnHelper;
};