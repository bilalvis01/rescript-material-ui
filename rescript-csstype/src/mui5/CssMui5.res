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
  module Background = {
    type t;
    include CssBackground.Make({ type t = t; });
  };
  module BackgroundAttachment = {
    type t;
    include CssBackgroundAttachment.Make({ type t = t; });
  };
  module BackgroundColor = {
    type t;
    include CssBackgroundColor.Make({ type t = t; });
  };
  module BackgroundImage = {
    type t;
    include CssBackgroundImage.Make({ type t = t; });
  };
  module BackgroundPosition = {
    type t;
    include CssBackgroundPosition.Make({ type t = t; });
  };
  module BackgroundStyle = {
    type t;
    include CssBackgroundStyle.Make({ type t = t; });
  };
  module Border = {
    type t;
    include CssBorder.Make({ type t = t; });
  };
  module BorderTop = {
    type t;
    include CssBorderTop.Make({ type t = t; });
  };
  module BorderRight = {
    type t;
    include CssBorderRight.Make({ type t = t; });
  };
  module BorderBottom = {
    type t;
    include CssBorderBottom.Make({ type t = t; });
  };
  module BorderLeft = {
    type t;
    include CssBorderLeft.Make({ type t = t; });
  };
  module BorderTopColor = {
    type t;
    include CssBorderTopColor.Make({ type t = t; });
  };
  module BorderRightColor = {
    type t;
    include CssBorderRightColor.Make({ type t = t; });
  };
  module BorderBottomColor = {
    type t;
    include CssBorderBottomColor.Make({ type t = t; });
  };
  module BorderLeftColor = {
    type t;
    include CssBorderLeftColor.Make({ type t = t; });
  };
  module BorderTopStyle = {
    type t;
    include CssBorderTopStyle.Make({ type t = t; });
  };
  module BorderRightStyle = {
    type t;
    include CssBorderRightStyle.Make({ type t = t; });
  };
  module BorderBottomStyle = {
    type t;
    include CssBorderBottomStyle.Make({ type t = t; });
  };
  module BorderLeftStyle = {
    type t;
    include CssBorderLeftStyle.Make({ type t = t; });
  };
  module BorderTopWidth = {
    type t;
    include CssBorderTopWidth.Make({ type t = t; });
  };
  module BorderRightWidth = {
    type t;
    include CssBorderRightWidth.Make({ type t = t; });
  };
  module BorderBottomWidth = {
    type t;
    include CssBorderBottomWidth.Make({ type t = t; });
  };
  module BorderLeftWidth = {
    type t;
    include CssBorderLeftWidth.Make({ type t = t; });
  };
  module BorderColor = {
    type t;
    include CssBorderColor.Make({ type t = t; });
  };
  module BorderStyle = {
    type t;
    include CssBorderStyle.Make({ type t = t; });
  };
  module BorderWidth = {
    type t;
    include CssBorderWidth.Make({ type t = t; });
  };
  module Clear = {
    type t;
    include CssClear.Make({ type t = t; });
  };
  module Color = {
    type t;
    include CssColor.Make({ type t = t; });
  };
  module Cursor = {
    type t;
    include CssCursor.Make({ type t = t; });
  };
  module FontFamily = {
    type t;
    include CssFontFamily.Make({ type t = t; });
  };
  module FontWeight = {
    type t;
    include CssFontWeight.Make({ type t = t; });
  };
  module Margin = {
    type t;
    include CssMargin.Make({ type t = t; });
  };
  module MarginTop = {
    type t;
    include CssMarginTop.Make({ type t = t; });
  };
  module MarginRight = {
    type t;
    include CssMarginRight.Make({ type t = t; });
  };
  module MarginBottom = {
    type t;
    include CssMarginBottom.Make({ type t = t; });
  };
  module MarginLeft = {
    type t;
    include CssMarginLeft.Make({ type t = t; });
  };
  module Padding = {
    type t;
    include CssPadding.Make({ type t = t; });
  };
  module PaddingTop = {
    type t;
    include CssPaddingTop.Make({ type t = t; });
  };
  module PaddingRight = {
    type t;
    include CssPaddingRight.Make({ type t = t; });
  };
  module PaddingBottom = {
    type t;
    include CssPaddingBottom.Make({ type t = t; });
  };
  module PaddingLeft = {
    type t;
    include CssPaddingLeft.Make({ type t = t; });
  };

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