module Make = (
  Type: {
    type value<'data>;
    type declarationBlocks<'data>;
  }
) => {
  type advancedDeclarationConstructorLike<'data, 'declarationBlocks> = [
    | CssDeclaration.constructor
    | CssDeclarationFn.constructor<'data>
    | CssRule.constructor<'declarationBlocks>
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
      | #...CssDeclaration.constructor as d => Declaration.make(d)
      | #...CssDeclarationFn.constructor as d => DeclarationFn.make(d)
      | #...CssRule.constructor as d => Rule.make(d)
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
  include CssRule.MakeHelper({ 
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
  include CssDeclarationHelper;
  include CssDeclarationFnHelper;
};