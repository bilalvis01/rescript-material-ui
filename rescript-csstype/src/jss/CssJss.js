// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssHelper$Ress = require("../helper/CssHelper.js");
var CssJssStatements$Ress = require("./CssJssStatements.js");
var CssPropertyValue$Ress = require("../value/CssPropertyValue.js");
var CssJssDeclarationBlock$Ress = require("./CssJssDeclarationBlock.js");

function Make(Type) {
  var DeclarationBlock = CssJssDeclarationBlock$Ress.Make({});
  var Statements = CssJssStatements$Ress.Make({});
  var include = CssHelper$Ress.Make({
        style: DeclarationBlock.make
      });
  return {
          DeclarationBlock: DeclarationBlock,
          Statements: Statements,
          style: DeclarationBlock.make,
          styles: Statements.make,
          Property: CssPropertyValue$Ress.Property,
          Background: CssPropertyValue$Ress.Background,
          BackgroundAttachment: CssPropertyValue$Ress.BackgroundAttachment,
          BackgroundColor: CssPropertyValue$Ress.BackgroundColor,
          BackgroundImage: CssPropertyValue$Ress.BackgroundImage,
          BackgroundPosition: CssPropertyValue$Ress.BackgroundPosition,
          BackgroundStyle: CssPropertyValue$Ress.BackgroundStyle,
          Border: CssPropertyValue$Ress.Border,
          BorderTop: CssPropertyValue$Ress.BorderTop,
          BorderRight: CssPropertyValue$Ress.BorderRight,
          BorderBottom: CssPropertyValue$Ress.BorderBottom,
          BorderLeft: CssPropertyValue$Ress.BorderLeft,
          BorderTopColor: CssPropertyValue$Ress.BorderTopColor,
          BorderRightColor: CssPropertyValue$Ress.BorderRightColor,
          BorderBottomColor: CssPropertyValue$Ress.BorderBottomColor,
          BorderLeftColor: CssPropertyValue$Ress.BorderLeftColor,
          BorderTopStyle: CssPropertyValue$Ress.BorderTopStyle,
          BorderRightStyle: CssPropertyValue$Ress.BorderRightStyle,
          BorderBottomStyle: CssPropertyValue$Ress.BorderBottomStyle,
          BorderLeftStyle: CssPropertyValue$Ress.BorderLeftStyle,
          BorderTopWidth: CssPropertyValue$Ress.BorderTopWidth,
          BorderRightWidth: CssPropertyValue$Ress.BorderRightWidth,
          BorderBottomWidth: CssPropertyValue$Ress.BorderBottomWidth,
          BorderLeftWidth: CssPropertyValue$Ress.BorderLeftWidth,
          BorderColor: CssPropertyValue$Ress.BorderColor,
          BorderStyle: CssPropertyValue$Ress.BorderStyle,
          BorderWidth: CssPropertyValue$Ress.BorderWidth,
          Clear: CssPropertyValue$Ress.Clear,
          Color: CssPropertyValue$Ress.Color,
          Cursor: CssPropertyValue$Ress.Cursor,
          FontFamily: CssPropertyValue$Ress.FontFamily,
          FontWeight: CssPropertyValue$Ress.FontWeight,
          Margin: CssPropertyValue$Ress.Margin,
          MarginTop: CssPropertyValue$Ress.MarginTop,
          MarginRight: CssPropertyValue$Ress.MarginRight,
          MarginBottom: CssPropertyValue$Ress.MarginBottom,
          MarginLeft: CssPropertyValue$Ress.MarginLeft,
          Padding: CssPropertyValue$Ress.Padding,
          PaddingTop: CssPropertyValue$Ress.PaddingTop,
          PaddingRight: CssPropertyValue$Ress.PaddingRight,
          PaddingBottom: CssPropertyValue$Ress.PaddingBottom,
          PaddingLeft: CssPropertyValue$Ress.PaddingLeft,
          str: include.str,
          num: include.num,
          $$int: include.$$int,
          pct: include.pct,
          ratio: include.ratio,
          fr: include.fr,
          ch: include.ch,
          em: include.em,
          ex: include.ex,
          rem: include.rem,
          vh: include.vh,
          vw: include.vw,
          vmin: include.vmin,
          vmax: include.vmax,
          px: include.px,
          cm: include.cm,
          mm: include.mm,
          inch: include.inch,
          pc: include.pc,
          pt: include.pt,
          deg: include.deg,
          grad: include.grad,
          rad: include.rad,
          turn: include.turn,
          s: include.s,
          ms: include.ms,
          hz: include.hz,
          kHz: include.kHz,
          dpi: include.dpi,
          dpcm: include.dpcm,
          dppx: include.dppx,
          x: include.x,
          position2: include.position2,
          position3: include.position3,
          position4: include.position4,
          src: include.src,
          bgLayer: include.bgLayer,
          bgSize2: include.bgSize2,
          hsl: include.hsl,
          hsla: include.hsla,
          rgb: include.rgb,
          rgba: include.rgba,
          hexColor: include.hexColor,
          url: include.url,
          image: include.image,
          linearColorStop2: include.linearColorStop2,
          linearColorStop3: include.linearColorStop3,
          linearGradient: include.linearGradient,
          linearGradient2: include.linearGradient2,
          linearGradient3: include.linearGradient3,
          linearGradient4: include.linearGradient4,
          repeatingLinearGradient: include.repeatingLinearGradient,
          repeatingLinearGradient2: include.repeatingLinearGradient2,
          repeatingLinearGradient3: include.repeatingLinearGradient3,
          repeatingLinearGradient4: include.repeatingLinearGradient4,
          radialGradient: include.radialGradient,
          radialGradient2: include.radialGradient2,
          radialGradient3: include.radialGradient3,
          radialGradient4: include.radialGradient4,
          repeatingRadialGradient: include.repeatingRadialGradient,
          repeatingRadialGradient2: include.repeatingRadialGradient2,
          repeatingRadialGradient3: include.repeatingRadialGradient3,
          repeatingRadialGradient4: include.repeatingRadialGradient4,
          conicGradient: include.conicGradient,
          conicGradient2: include.conicGradient2,
          conicGradient3: include.conicGradient3,
          conicGradient4: include.conicGradient4,
          repeatingConicGradient: include.repeatingConicGradient,
          repeatingConicGradient2: include.repeatingConicGradient2,
          repeatingConicGradient3: include.repeatingConicGradient3,
          repeatingConicGradient4: include.repeatingConicGradient4,
          rule: include.rule,
          atRule: include.atRule,
          fontFace: include.fontFace,
          $$FontFace: include.$$FontFace,
          pseudoClass: include.pseudoClass,
          hover: include.hover,
          background: include.background,
          background2: include.background2,
          background3: include.background3,
          background4: include.background4,
          backgroundUnion: include.backgroundUnion,
          backgroundString: include.backgroundString,
          backgroundAttachment: include.backgroundAttachment,
          backgroundAttachment2: include.backgroundAttachment2,
          backgroundAttachment3: include.backgroundAttachment3,
          backgroundAttachment4: include.backgroundAttachment4,
          backgroundAttachmentUnion: include.backgroundAttachmentUnion,
          backgroundAttachmentString: include.backgroundAttachmentString,
          backgroundColor: include.backgroundColor,
          backgroundColorUnion: include.backgroundColorUnion,
          backgroundColorString: include.backgroundColorString,
          backgroundImage: include.backgroundImage,
          backgroundImage2: include.backgroundImage2,
          backgroundImage3: include.backgroundImage3,
          backgroundImage4: include.backgroundImage4,
          backgroundImageUnion: include.backgroundImageUnion,
          backgroundImageString: include.backgroundImageString,
          backgroundPosition: include.backgroundPosition,
          backgroundPosition2: include.backgroundPosition2,
          backgroundPosition3: include.backgroundPosition3,
          backgroundPosition4: include.backgroundPosition4,
          backgroundPositionUnion: include.backgroundPositionUnion,
          backgroundPositionString: include.backgroundPositionString,
          backgroundStyle: include.backgroundStyle,
          backgroundStyle2: include.backgroundStyle2,
          backgroundStyle3: include.backgroundStyle3,
          backgroundStyle4: include.backgroundStyle4,
          backgroundStyleUnion: include.backgroundStyleUnion,
          backgroundStyleString: include.backgroundStyleString,
          border: include.border,
          borderUnion: include.borderUnion,
          borderString: include.borderString,
          borderTop: include.borderTop,
          borderTopUnion: include.borderTopUnion,
          borderTopString: include.borderTopString,
          borderRight: include.borderRight,
          borderRightUnion: include.borderRightUnion,
          borderRightString: include.borderRightString,
          borderBottom: include.borderBottom,
          borderBottomUnion: include.borderBottomUnion,
          borderBottomString: include.borderBottomString,
          borderLeft: include.borderLeft,
          borderLeftUnion: include.borderLeftUnion,
          borderLeftString: include.borderLeftString,
          borderTopColor: include.borderTopColor,
          borderTopColorUnion: include.borderTopColorUnion,
          borderTopColorString: include.borderTopColorString,
          borderRightColor: include.borderRightColor,
          borderRightColorUnion: include.borderRightColorUnion,
          borderRightColorString: include.borderRightColorString,
          borderBottomColor: include.borderBottomColor,
          borderBottomColorUnion: include.borderBottomColorUnion,
          borderBottomColorString: include.borderBottomColorString,
          borderLeftColor: include.borderLeftColor,
          borderLeftColorUnion: include.borderLeftColorUnion,
          borderLeftColorString: include.borderLeftColorString,
          borderTopStyle: include.borderTopStyle,
          borderTopStyleUnion: include.borderTopStyleUnion,
          borderTopStyleString: include.borderTopStyleString,
          borderRightStyle: include.borderRightStyle,
          borderRightStyleUnion: include.borderRightStyleUnion,
          borderRightStyleString: include.borderRightStyleString,
          borderBottomStyle: include.borderBottomStyle,
          borderBottomStyleUnion: include.borderBottomStyleUnion,
          borderBottomStyleString: include.borderBottomStyleString,
          borderLeftStyle: include.borderLeftStyle,
          borderLeftStyleUnion: include.borderLeftStyleUnion,
          borderLeftStyleString: include.borderLeftStyleString,
          borderTopWidth: include.borderTopWidth,
          borderTopWidthUnion: include.borderTopWidthUnion,
          borderTopWidthString: include.borderTopWidthString,
          borderRightWidth: include.borderRightWidth,
          borderRightWidthUnion: include.borderRightWidthUnion,
          borderRightWidthString: include.borderRightWidthString,
          borderBottomWidth: include.borderBottomWidth,
          borderBottomWidthUnion: include.borderBottomWidthUnion,
          borderBottomWidthString: include.borderBottomWidthString,
          borderLeftWidth: include.borderLeftWidth,
          borderLeftWidthUnion: include.borderLeftWidthUnion,
          borderLeftWidthString: include.borderLeftWidthString,
          borderColor: include.borderColor,
          borderColor2: include.borderColor2,
          borderColor3: include.borderColor3,
          borderColor4: include.borderColor4,
          borderColorUnion: include.borderColorUnion,
          borderColorString: include.borderColorString,
          borderStyle: include.borderStyle,
          borderStyle2: include.borderStyle2,
          borderStyle3: include.borderStyle3,
          borderStyle4: include.borderStyle4,
          borderStyleUnion: include.borderStyleUnion,
          borderStyleString: include.borderStyleString,
          borderWidth: include.borderWidth,
          borderWidth2: include.borderWidth2,
          borderWidth3: include.borderWidth3,
          borderWidth4: include.borderWidth4,
          borderWidthUnion: include.borderWidthUnion,
          borderWidthString: include.borderWidthString,
          clear: include.clear,
          color: include.color,
          colorUnion: include.colorUnion,
          colorString: include.colorString,
          cursor: include.cursor,
          cursor1: include.cursor1,
          cursor2: include.cursor2,
          cursor3: include.cursor3,
          cursor4: include.cursor4,
          cursorUnion: include.cursorUnion,
          cursorString: include.cursorString,
          fontFamily: include.fontFamily,
          fontFamily2: include.fontFamily2,
          fontFamily3: include.fontFamily3,
          fontFamily4: include.fontFamily4,
          fontFamilyUnion: include.fontFamilyUnion,
          fontFamilyString: include.fontFamilyString,
          fontWeight: include.fontWeight,
          fontWeightUnion: include.fontWeightUnion,
          fontWeightString: include.fontWeightString,
          fontWeightNumber: include.fontWeightNumber,
          margin: include.margin,
          margin2: include.margin2,
          margin3: include.margin3,
          margin4: include.margin4,
          marginUnion: include.marginUnion,
          marginString: include.marginString,
          marginNumber: include.marginNumber,
          marginTop: include.marginTop,
          marginTopUnion: include.marginTopUnion,
          marginTopString: include.marginTopString,
          marginTopNumber: include.marginTopNumber,
          marginRight: include.marginRight,
          marginRightUnion: include.marginRightUnion,
          marginRightString: include.marginRightString,
          marginRightNumber: include.marginRightNumber,
          marginBottom: include.marginBottom,
          marginBottomUnion: include.marginBottomUnion,
          marginBottomString: include.marginBottomString,
          marginBottomNumber: include.marginBottomNumber,
          marginLeft: include.marginLeft,
          marginLeftUnion: include.marginLeftUnion,
          marginLeftString: include.marginLeftString,
          marginLeftNumber: include.marginLeftNumber,
          padding: include.padding,
          padding2: include.padding2,
          padding3: include.padding3,
          padding4: include.padding4,
          paddingUnion: include.paddingUnion,
          paddingString: include.paddingString,
          paddingNumber: include.paddingNumber,
          paddingTop: include.paddingTop,
          paddingTopUnion: include.paddingTopUnion,
          paddingTopString: include.paddingTopString,
          paddingTopNumber: include.paddingTopNumber,
          paddingRight: include.paddingRight,
          paddingRightUnion: include.paddingRightUnion,
          paddingRightString: include.paddingRightString,
          paddingRightNumber: include.paddingRightNumber,
          paddingBottom: include.paddingBottom,
          paddingBottomUnion: include.paddingBottomUnion,
          paddingBottomString: include.paddingBottomString,
          paddingBottomNumber: include.paddingBottomNumber,
          paddingLeft: include.paddingLeft,
          paddingLeftUnion: include.paddingLeftUnion,
          paddingLeftString: include.paddingLeftString,
          paddingLeftNumber: include.paddingLeftNumber,
          declaration: include.declaration,
          backgroundFn: include.backgroundFn,
          backgroundAttachmentFn: include.backgroundAttachmentFn,
          backgroundColorFn: include.backgroundColorFn,
          backgroundImageFn: include.backgroundImageFn,
          backgroundPositionFn: include.backgroundPositionFn,
          backgroundStyleFn: include.backgroundStyleFn,
          borderFn: include.borderFn,
          borderTopFn: include.borderTopFn,
          borderRightFn: include.borderRightFn,
          borderBottomFn: include.borderBottomFn,
          borderLeftFn: include.borderLeftFn,
          borderTopColorFn: include.borderTopColorFn,
          borderRightColorFn: include.borderRightColorFn,
          borderBottomColorFn: include.borderBottomColorFn,
          borderLeftColorFn: include.borderLeftColorFn,
          borderTopStyleFn: include.borderTopStyleFn,
          borderRightStyleFn: include.borderRightStyleFn,
          borderBottomStyleFn: include.borderBottomStyleFn,
          borderLeftStyleFn: include.borderLeftStyleFn,
          borderTopWidthFn: include.borderTopWidthFn,
          borderRightWidthFn: include.borderRightWidthFn,
          borderBottomWidthFn: include.borderBottomWidthFn,
          borderLeftWidthFn: include.borderLeftWidthFn,
          borderColorFn: include.borderColorFn,
          borderStyleFn: include.borderStyleFn,
          borderWidthFn: include.borderWidthFn,
          clearFn: include.clearFn,
          colorFn: include.colorFn,
          cursorFn: include.cursorFn,
          fontFamilyFn: include.fontFamilyFn,
          fontWeightFn: include.fontWeightFn,
          marginFn: include.marginFn,
          marginTopFn: include.marginTopFn,
          marginRightFn: include.marginRightFn,
          marginBottomFn: include.marginBottomFn,
          marginLeftFn: include.marginLeftFn,
          paddingFn: include.paddingFn,
          paddingTopFn: include.paddingTopFn,
          paddingRightFn: include.paddingRightFn,
          paddingBottomFn: include.paddingBottomFn,
          paddingLeftFn: include.paddingLeftFn
        };
}

exports.Make = Make;
/* CssHelper-Ress Not a pure module */