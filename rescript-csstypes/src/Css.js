// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssPropertyValue$Css = require("./CssPropertyValue.js");

function str(v) {
  return {
          NAME: "string",
          VAL: v
        };
}

function num(v) {
  return {
          NAME: "number",
          VAL: v
        };
}

function $$int(v) {
  return {
          NAME: "integer",
          VAL: v
        };
}

function ratio(v1, v2) {
  return {
          NAME: "ratio",
          VAL: [
            v1,
            v2
          ]
        };
}

function fr(v) {
  return {
          NAME: "fr",
          VAL: v
        };
}

function ch(l) {
  return {
          NAME: "ch",
          VAL: l
        };
}

function em(l) {
  return {
          NAME: "em",
          VAL: l
        };
}

function ex(l) {
  return {
          NAME: "ex",
          VAL: l
        };
}

function rem(l) {
  return {
          NAME: "rem",
          VAL: l
        };
}

function vh(l) {
  return {
          NAME: "vh",
          VAL: l
        };
}

function vw(l) {
  return {
          NAME: "vw",
          VAL: l
        };
}

function vmin(l) {
  return {
          NAME: "vmin",
          VAL: l
        };
}

function vmax(l) {
  return {
          NAME: "vmax",
          VAL: l
        };
}

function px(l) {
  return {
          NAME: "px",
          VAL: l
        };
}

function cm(l) {
  return {
          NAME: "cm",
          VAL: l
        };
}

function mm(l) {
  return {
          NAME: "mm",
          VAL: l
        };
}

function inch(l) {
  return {
          NAME: "inch",
          VAL: l
        };
}

function pc(l) {
  return {
          NAME: "pc",
          VAL: l
        };
}

function pt(l) {
  return {
          NAME: "pt",
          VAL: l
        };
}

function pct(v) {
  return {
          NAME: "pct",
          VAL: v
        };
}

function deg(v) {
  return {
          NAME: "deg",
          VAL: v
        };
}

function grad(v) {
  return {
          NAME: "grad",
          VAL: v
        };
}

function rad(v) {
  return {
          NAME: "rad",
          VAL: v
        };
}

function turn(v) {
  return {
          NAME: "turn",
          VAL: v
        };
}

function s(v) {
  return {
          NAME: "s",
          VAL: v
        };
}

function ms(v) {
  return {
          NAME: "ms",
          VAL: v
        };
}

function hz(v) {
  return {
          NAME: "Hz",
          VAL: v
        };
}

function kHz(v) {
  return {
          NAME: "kHz",
          VAL: v
        };
}

function dpi(v) {
  return {
          NAME: "dpi",
          VAL: v
        };
}

function dpcm(v) {
  return {
          NAME: "dpcm",
          VAL: v
        };
}

function dppx(v) {
  return {
          NAME: "dppx",
          VAL: v
        };
}

function x(v) {
  return {
          NAME: "x",
          VAL: v
        };
}

function transformOrigin2(length, x, y) {
  return {
          NAME: "transformOrigin2",
          VAL: [
            x,
            y,
            length
          ]
        };
}

function hsl(v1, v2, v3) {
  return {
          NAME: "hsl",
          VAL: [
            {
              NAME: "number",
              VAL: v1
            },
            v2,
            v3
          ]
        };
}

function hsla(v1, v2, v3, v4) {
  return {
          NAME: "hsla",
          VAL: [
            {
              NAME: "number",
              VAL: v1
            },
            v2,
            v3,
            {
              NAME: "number",
              VAL: v4
            }
          ]
        };
}

function rgb(v1, v2, v3) {
  return {
          NAME: "rgb",
          VAL: [
            {
              NAME: "number",
              VAL: v1
            },
            {
              NAME: "number",
              VAL: v2
            },
            {
              NAME: "number",
              VAL: v3
            }
          ]
        };
}

function rgba(v1, v2, v3, v4) {
  return {
          NAME: "rgba",
          VAL: [
            {
              NAME: "number",
              VAL: v1
            },
            {
              NAME: "number",
              VAL: v2
            },
            {
              NAME: "number",
              VAL: v3
            },
            {
              NAME: "number",
              VAL: v4
            }
          ]
        };
}

function rgbX(v) {
  return {
          NAME: "rgbX",
          VAL: v
        };
}

function linearColorStop2(c, l) {
  return {
          NAME: "linearColorStop2",
          VAL: [
            c,
            l
          ]
        };
}

function linearColorStop3(c, l1, l2) {
  return {
          NAME: "linearColorStop3",
          VAL: [
            c,
            l1,
            l2
          ]
        };
}

function linearGradient(angle, c) {
  return {
          NAME: "linearGradient",
          VAL: [
            angle,
            c
          ]
        };
}

function linearGradient2(angle, c1, c2) {
  return {
          NAME: "linearGradient2",
          VAL: [
            angle,
            c1,
            c2
          ]
        };
}

function linearGradient3(angle, c1, c2, c3) {
  return {
          NAME: "linearGradient3",
          VAL: [
            angle,
            c1,
            c2,
            c3
          ]
        };
}

function linearGradient4(angle, c1, c2, c3, c4) {
  return {
          NAME: "linearGradient4",
          VAL: [
            angle,
            c1,
            c2,
            c3,
            c4
          ]
        };
}

function repeatingLinearGradient(angle, c) {
  return {
          NAME: "repeatingLinearGradient",
          VAL: [
            angle,
            c
          ]
        };
}

function repeatingLinearGradient2(angle, c1, c2) {
  return {
          NAME: "repeatingLinearGradient2",
          VAL: [
            angle,
            c1,
            c2
          ]
        };
}

function repeatingLinearGradient3(angle, c1, c2, c3) {
  return {
          NAME: "repeatingLinearGradient3",
          VAL: [
            angle,
            c1,
            c2,
            c3
          ]
        };
}

function repeatingLinearGradient4(angle, c1, c2, c3, c4) {
  return {
          NAME: "repeatingLinearGradient4",
          VAL: [
            angle,
            c1,
            c2,
            c3,
            c4
          ]
        };
}

function radialGradient(position, endingShape, size, c) {
  return {
          NAME: "radialGradient",
          VAL: [
            position,
            endingShape,
            size,
            c
          ]
        };
}

function radialGradient2(position, endingShape, size, c1, c2) {
  return {
          NAME: "radialGradient2",
          VAL: [
            position,
            endingShape,
            size,
            c1,
            c2
          ]
        };
}

function radialGradient3(position, endingShape, size, c1, c2, c3) {
  return {
          NAME: "radialGradient3",
          VAL: [
            position,
            endingShape,
            size,
            c1,
            c2,
            c3
          ]
        };
}

function radialGradient4(position, endingShape, size, c1, c2, c3, c4) {
  return {
          NAME: "radialGradient4",
          VAL: [
            position,
            endingShape,
            size,
            c1,
            c2,
            c3,
            c4
          ]
        };
}

function repeatingRadialGradient(position, endingShape, size, c) {
  return {
          NAME: "repeatingRadialGradient",
          VAL: [
            position,
            endingShape,
            size,
            c
          ]
        };
}

function repeatingRadialGradient2(position, endingShape, size, c1, c2) {
  return {
          NAME: "repeatingRadialGradient2",
          VAL: [
            position,
            endingShape,
            size,
            c1,
            c2
          ]
        };
}

function repeatingRadialGradient3(position, endingShape, size, c1, c2, c3) {
  return {
          NAME: "repeatingRadialGradient3",
          VAL: [
            position,
            endingShape,
            size,
            c1,
            c2,
            c3
          ]
        };
}

function repeatingRadialGradient4(position, endingShape, size, c1, c2, c3, c4) {
  return {
          NAME: "repeatingRadialGradient4",
          VAL: [
            position,
            endingShape,
            size,
            c1,
            c2,
            c3,
            c4
          ]
        };
}

function conicGradient(angle, position, c) {
  return {
          NAME: "conicGradient",
          VAL: [
            angle,
            position,
            c
          ]
        };
}

function conicGradient2(angle, position, c1, c2) {
  return {
          NAME: "conicGradient2",
          VAL: [
            angle,
            position,
            c1,
            c2
          ]
        };
}

function conicGradient3(angle, position, c1, c2, c3) {
  return {
          NAME: "conicGradient3",
          VAL: [
            angle,
            position,
            c1,
            c2,
            c3
          ]
        };
}

function conicGradient4(angle, position, c1, c2, c3, c4) {
  return {
          NAME: "conicGradient4",
          VAL: [
            angle,
            position,
            c1,
            c2,
            c3,
            c4
          ]
        };
}

function repeatingConicGradient(angle, position, c) {
  return {
          NAME: "repeatingConicGradient",
          VAL: [
            angle,
            position,
            c
          ]
        };
}

function repeatingConicGradient2(angle, position, c1, c2) {
  return {
          NAME: "repeatingConicGradient2",
          VAL: [
            angle,
            position,
            c1,
            c2
          ]
        };
}

function repeatingConicGradient3(angle, position, c1, c2, c3) {
  return {
          NAME: "repeatingConicGradient3",
          VAL: [
            angle,
            position,
            c1,
            c2,
            c3
          ]
        };
}

function repeatingConicGradient4(angle, position, c1, c2, c3, c4) {
  return {
          NAME: "repeatingConicGradient4",
          VAL: [
            angle,
            position,
            c1,
            c2,
            c3,
            c4
          ]
        };
}

function url(v) {
  return {
          NAME: "url",
          VAL: v
        };
}

function src(v) {
  return {
          NAME: "src",
          VAL: v
        };
}

function image(dir, color, imageSrcOrColor) {
  return {
          NAME: "image",
          VAL: [
            dir,
            color,
            imageSrcOrColor
          ]
        };
}

function bgSize2(s1, s2) {
  return {
          NAME: "bgSize2",
          VAL: [
            s1,
            s2
          ]
        };
}

function position2(p1, p2) {
  return {
          NAME: "position2",
          VAL: [
            p1,
            p2
          ]
        };
}

function position3(p1, p2, p3) {
  return {
          NAME: "position3",
          VAL: [
            p1,
            p2,
            p3
          ]
        };
}

function position4(p1, p2, p3, p4) {
  return {
          NAME: "position4",
          VAL: [
            p1,
            p2,
            p3,
            p4
          ]
        };
}

function bgLayer(color, position, size, repeat, attachment, origin, clip, imageOrColor) {
  return {
          NAME: "bgLayer",
          VAL: [
            color,
            position,
            size,
            repeat,
            attachment,
            origin,
            clip,
            imageOrColor
          ]
        };
}

function property(name, value) {
  return [
          name,
          value
        ];
}

function propertyString(name, value) {
  return [
          name,
          value
        ];
}

function propertyNumber(name, value) {
  return [
          name,
          value
        ];
}

function propertyInteger(name, value) {
  return [
          name,
          value
        ];
}

function border(width, color, style) {
  return [
          "border",
          CssPropertyValue$Css.border(width, color, style)
        ];
}

function borderString(v) {
  return [
          "border",
          v
        ];
}

function borderTop(width, color, style) {
  return [
          "borderTop",
          CssPropertyValue$Css.border(width, color, style)
        ];
}

function borderTopString(v) {
  return [
          "borderTop",
          v
        ];
}

function borderLeft(width, color, style) {
  return [
          "borderLeft",
          CssPropertyValue$Css.border(width, color, style)
        ];
}

function borderLeftString(v) {
  return [
          "borderLeft",
          v
        ];
}

function borderRight(width, color, style) {
  return [
          "borderRight",
          CssPropertyValue$Css.border(width, color, style)
        ];
}

function borderRightString(v) {
  return [
          "borderRight",
          v
        ];
}

function borderBottom(width, color, style) {
  return [
          "borderBottom",
          CssPropertyValue$Css.border(width, color, style)
        ];
}

function borderBottomString(v) {
  return [
          "borderBottom",
          v
        ];
}

function borderColor(v) {
  return [
          "borderColor",
          CssPropertyValue$Css.borderColor(v)
        ];
}

function borderColor2(tb, lr) {
  return [
          "borderColor",
          CssPropertyValue$Css.borderColor2(tb, lr)
        ];
}

function borderColor3(top, lr, bottom) {
  return [
          "borderColor",
          CssPropertyValue$Css.borderColor3(top, lr, bottom)
        ];
}

function borderColor4(top, right, bottom, left) {
  return [
          "borderColor",
          CssPropertyValue$Css.borderColor4(top, right, bottom, left)
        ];
}

function borderColorString(v) {
  return [
          "borderColor",
          v
        ];
}

function borderTopColor(v) {
  return [
          "borderTopColor",
          CssPropertyValue$Css.borderTopColor(v)
        ];
}

function borderTopColorString(v) {
  return [
          "borderTopColor",
          v
        ];
}

function borderRightColor(v) {
  return [
          "borderRightColor",
          CssPropertyValue$Css.borderRightColor(v)
        ];
}

function borderRightColorString(v) {
  return [
          "borderRightColor",
          v
        ];
}

function borderBottomColor(v) {
  return [
          "borderBottomColor",
          CssPropertyValue$Css.borderBottomColor(v)
        ];
}

function borderBottomColorString(v) {
  return [
          "borderBottomColor",
          v
        ];
}

function borderLeftColor(v) {
  return [
          "borderLeftColor",
          CssPropertyValue$Css.borderLeftColor(v)
        ];
}

function borderLeftColorString(v) {
  return [
          "borderLeftColor",
          v
        ];
}

function borderStyle(v) {
  return [
          "borderStyle",
          CssPropertyValue$Css.borderStyle(v)
        ];
}

function borderStyle2(tb, lr) {
  return [
          "borderStyle",
          CssPropertyValue$Css.borderStyle2(tb, lr)
        ];
}

function borderStyle3(top, lr, bottom) {
  return [
          "borderStyle",
          CssPropertyValue$Css.borderStyle3(top, lr, bottom)
        ];
}

function borderStyle4(top, right, bottom, left) {
  return [
          "borderStyle",
          CssPropertyValue$Css.borderStyle4(top, right, bottom, left)
        ];
}

function borderStyleString(v) {
  return [
          "borderStyle",
          v
        ];
}

function borderTopStyle(v) {
  return [
          "borderTopStyle",
          CssPropertyValue$Css.borderStyle(v)
        ];
}

function borderTopStyleString(v) {
  return [
          "borderTopStyle",
          v
        ];
}

function borderRightStyle(v) {
  return [
          "borderRightStyle",
          CssPropertyValue$Css.borderStyle(v)
        ];
}

function borderRightStyleString(v) {
  return [
          "borderRightStyle",
          v
        ];
}

function borderBottomStyle(v) {
  return [
          "borderBottomStyle",
          CssPropertyValue$Css.borderStyle(v)
        ];
}

function borderBottomStyleString(v) {
  return [
          "borderBottomStyle",
          v
        ];
}

function borderLeftStyle(v) {
  return [
          "borderLeftStyle",
          CssPropertyValue$Css.borderStyle(v)
        ];
}

function borderLeftStyleString(v) {
  return [
          "borderLeftStyle",
          v
        ];
}

function borderWidth(v) {
  return [
          "borderWidth",
          CssPropertyValue$Css.borderWidth(v)
        ];
}

function borderWidth2(tb, lr) {
  return [
          "borderWidth",
          CssPropertyValue$Css.borderWidth2(tb, lr)
        ];
}

function borderWidth3(top, lr, bottom) {
  return [
          "borderWidth",
          CssPropertyValue$Css.borderWidth3(top, lr, bottom)
        ];
}

function borderWidth4(top, right, bottom, left) {
  return [
          "borderWidth",
          CssPropertyValue$Css.borderWidth4(top, right, bottom, left)
        ];
}

function borderWidthString(v) {
  return [
          "borderWidth",
          v
        ];
}

function borderTopWidth(v) {
  return [
          "borderTopWidth",
          CssPropertyValue$Css.borderTopWidth(v)
        ];
}

function borderTopWidthString(v) {
  return [
          "borderTopWidth",
          v
        ];
}

function borderRightWidth(v) {
  return [
          "borderRightWidth",
          CssPropertyValue$Css.borderRightWidth(v)
        ];
}

function borderRightWidthString(v) {
  return [
          "borderRightWidth",
          v
        ];
}

function borderBottomWidth(v) {
  return [
          "borderBottomWidth",
          CssPropertyValue$Css.borderBottomWidth(v)
        ];
}

function borderBottomWidthString(v) {
  return [
          "borderBottomWidth",
          v
        ];
}

function borderLeftWidth(v) {
  return [
          "borderLeftWidth",
          CssPropertyValue$Css.borderLeftWidth(v)
        ];
}

function borderLeftWidthString(v) {
  return [
          "borderLeftWidth",
          v
        ];
}

function background(color, position, size, repeat, attachment, origin, clip, imageOrColor) {
  return [
          "background",
          CssPropertyValue$Css.background(color, position, size, repeat, attachment, origin, clip, imageOrColor)
        ];
}

function background2(l1, l2) {
  return [
          "background",
          CssPropertyValue$Css.background2(l1, l2)
        ];
}

function background3(l1, l2, l3) {
  return [
          "background",
          CssPropertyValue$Css.background3(l1, l2, l3)
        ];
}

function background4(l1, l2, l3, l4) {
  return [
          "background",
          CssPropertyValue$Css.background4(l1, l2, l3, l4)
        ];
}

function backgroundString(v) {
  return [
          "background",
          v
        ];
}

function backgroundAttachment(v) {
  return [
          "backgroundAttachment",
          CssPropertyValue$Css.backgroundAttachment(v)
        ];
}

function backgroundAttachment2(v1, v2) {
  return [
          "backgroundAttachment",
          CssPropertyValue$Css.backgroundAttachment2(v1, v2)
        ];
}

function backgroundAttachment3(v1, v2, v3) {
  return [
          "backgroundAttachment",
          CssPropertyValue$Css.backgroundAttachment3(v1, v2, v3)
        ];
}

function backgroundAttachment4(v1, v2, v3, v4) {
  return [
          "backgroundAttachment",
          CssPropertyValue$Css.backgroundAttachment4(v1, v2, v3, v4)
        ];
}

function backgroundAttachmentString(v) {
  return [
          "backgroundAttachment",
          v
        ];
}

function backgroundColor(v) {
  return [
          "backgroundColor",
          CssPropertyValue$Css.backgroundColor(v)
        ];
}

function backgroundColorString(v) {
  return [
          "backgroundColor",
          v
        ];
}

function backgroundImage(v) {
  return [
          "backgroundImage",
          CssPropertyValue$Css.backgroundImage(v)
        ];
}

function backgroundImage2(v1, v2) {
  return [
          "backgroundImage",
          CssPropertyValue$Css.backgroundImage2(v1, v2)
        ];
}

function backgroundImage3(v1, v2, v3) {
  return [
          "backgroundImage",
          CssPropertyValue$Css.backgroundImage3(v1, v2, v3)
        ];
}

function backgroundImage4(v1, v2, v3, v4) {
  return [
          "backgroundImage",
          CssPropertyValue$Css.backgroundImage4(v1, v2, v3, v4)
        ];
}

function backgroundImageString(v) {
  return [
          "backgroundImage",
          v
        ];
}

function backgroundPosition(v) {
  return [
          "backgroundPosition",
          CssPropertyValue$Css.backgroundPosition(v)
        ];
}

function backgroundPosition2(v1, v2) {
  return [
          "backgroundPosition",
          CssPropertyValue$Css.backgroundPosition2(v1, v2)
        ];
}

function backgroundPosition3(v1, v2, v3) {
  return [
          "backgroundPosition",
          CssPropertyValue$Css.backgroundPosition3(v1, v2, v3)
        ];
}

function backgroundPosition4(v1, v2, v3, v4) {
  return [
          "backgroundPosition",
          CssPropertyValue$Css.backgroundPosition4(v1, v2, v3, v4)
        ];
}

function backgroundPositionString(v) {
  return [
          "backgroundPosition",
          v
        ];
}

function backgroundStyle(v) {
  return [
          "backgroundStyle",
          CssPropertyValue$Css.backgroundStyle(v)
        ];
}

function backgroundStyle2(v1, v2) {
  return [
          "backgroundStyle",
          CssPropertyValue$Css.backgroundStyle2(v1, v2)
        ];
}

function backgroundStyle3(v1, v2, v3) {
  return [
          "backgroundStyle",
          CssPropertyValue$Css.backgroundStyle3(v1, v2, v3)
        ];
}

function backgroundStyle4(v1, v2, v3, v4) {
  return [
          "backgroundStyle",
          CssPropertyValue$Css.backgroundStyle4(v1, v2, v3, v4)
        ];
}

function backgroundStyleString(v) {
  return [
          "backgroundStyle",
          v
        ];
}

exports.str = str;
exports.num = num;
exports.$$int = $$int;
exports.pct = pct;
exports.ratio = ratio;
exports.fr = fr;
exports.ch = ch;
exports.em = em;
exports.ex = ex;
exports.rem = rem;
exports.vh = vh;
exports.vw = vw;
exports.vmin = vmin;
exports.vmax = vmax;
exports.px = px;
exports.cm = cm;
exports.mm = mm;
exports.inch = inch;
exports.pc = pc;
exports.pt = pt;
exports.deg = deg;
exports.grad = grad;
exports.rad = rad;
exports.turn = turn;
exports.s = s;
exports.ms = ms;
exports.hz = hz;
exports.kHz = kHz;
exports.dpi = dpi;
exports.dpcm = dpcm;
exports.dppx = dppx;
exports.x = x;
exports.transformOrigin2 = transformOrigin2;
exports.hsl = hsl;
exports.hsla = hsla;
exports.rgb = rgb;
exports.rgba = rgba;
exports.rgbX = rgbX;
exports.linearColorStop2 = linearColorStop2;
exports.linearColorStop3 = linearColorStop3;
exports.linearGradient = linearGradient;
exports.linearGradient2 = linearGradient2;
exports.linearGradient3 = linearGradient3;
exports.linearGradient4 = linearGradient4;
exports.repeatingLinearGradient = repeatingLinearGradient;
exports.repeatingLinearGradient2 = repeatingLinearGradient2;
exports.repeatingLinearGradient3 = repeatingLinearGradient3;
exports.repeatingLinearGradient4 = repeatingLinearGradient4;
exports.radialGradient = radialGradient;
exports.radialGradient2 = radialGradient2;
exports.radialGradient3 = radialGradient3;
exports.radialGradient4 = radialGradient4;
exports.repeatingRadialGradient = repeatingRadialGradient;
exports.repeatingRadialGradient2 = repeatingRadialGradient2;
exports.repeatingRadialGradient3 = repeatingRadialGradient3;
exports.repeatingRadialGradient4 = repeatingRadialGradient4;
exports.conicGradient = conicGradient;
exports.conicGradient2 = conicGradient2;
exports.conicGradient3 = conicGradient3;
exports.conicGradient4 = conicGradient4;
exports.repeatingConicGradient = repeatingConicGradient;
exports.repeatingConicGradient2 = repeatingConicGradient2;
exports.repeatingConicGradient3 = repeatingConicGradient3;
exports.repeatingConicGradient4 = repeatingConicGradient4;
exports.url = url;
exports.src = src;
exports.image = image;
exports.bgSize2 = bgSize2;
exports.position2 = position2;
exports.position3 = position3;
exports.position4 = position4;
exports.bgLayer = bgLayer;
exports.property = property;
exports.propertyString = propertyString;
exports.propertyNumber = propertyNumber;
exports.propertyInteger = propertyInteger;
exports.border = border;
exports.borderString = borderString;
exports.borderTop = borderTop;
exports.borderTopString = borderTopString;
exports.borderLeft = borderLeft;
exports.borderLeftString = borderLeftString;
exports.borderRight = borderRight;
exports.borderRightString = borderRightString;
exports.borderBottom = borderBottom;
exports.borderBottomString = borderBottomString;
exports.borderColor = borderColor;
exports.borderColor2 = borderColor2;
exports.borderColor3 = borderColor3;
exports.borderColor4 = borderColor4;
exports.borderColorString = borderColorString;
exports.borderTopColor = borderTopColor;
exports.borderTopColorString = borderTopColorString;
exports.borderRightColor = borderRightColor;
exports.borderRightColorString = borderRightColorString;
exports.borderBottomColor = borderBottomColor;
exports.borderBottomColorString = borderBottomColorString;
exports.borderLeftColor = borderLeftColor;
exports.borderLeftColorString = borderLeftColorString;
exports.borderStyle = borderStyle;
exports.borderStyle2 = borderStyle2;
exports.borderStyle3 = borderStyle3;
exports.borderStyle4 = borderStyle4;
exports.borderStyleString = borderStyleString;
exports.borderTopStyle = borderTopStyle;
exports.borderTopStyleString = borderTopStyleString;
exports.borderRightStyle = borderRightStyle;
exports.borderRightStyleString = borderRightStyleString;
exports.borderBottomStyle = borderBottomStyle;
exports.borderBottomStyleString = borderBottomStyleString;
exports.borderLeftStyle = borderLeftStyle;
exports.borderLeftStyleString = borderLeftStyleString;
exports.borderWidth = borderWidth;
exports.borderWidth2 = borderWidth2;
exports.borderWidth3 = borderWidth3;
exports.borderWidth4 = borderWidth4;
exports.borderWidthString = borderWidthString;
exports.borderTopWidth = borderTopWidth;
exports.borderTopWidthString = borderTopWidthString;
exports.borderRightWidth = borderRightWidth;
exports.borderRightWidthString = borderRightWidthString;
exports.borderBottomWidth = borderBottomWidth;
exports.borderBottomWidthString = borderBottomWidthString;
exports.borderLeftWidth = borderLeftWidth;
exports.borderLeftWidthString = borderLeftWidthString;
exports.background = background;
exports.backgroundString = backgroundString;
exports.background2 = background2;
exports.background3 = background3;
exports.background4 = background4;
exports.backgroundAttachment = backgroundAttachment;
exports.backgroundAttachment2 = backgroundAttachment2;
exports.backgroundAttachment3 = backgroundAttachment3;
exports.backgroundAttachment4 = backgroundAttachment4;
exports.backgroundAttachmentString = backgroundAttachmentString;
exports.backgroundColor = backgroundColor;
exports.backgroundColorString = backgroundColorString;
exports.backgroundImage = backgroundImage;
exports.backgroundImage2 = backgroundImage2;
exports.backgroundImage3 = backgroundImage3;
exports.backgroundImage4 = backgroundImage4;
exports.backgroundImageString = backgroundImageString;
exports.backgroundPosition = backgroundPosition;
exports.backgroundPosition2 = backgroundPosition2;
exports.backgroundPosition3 = backgroundPosition3;
exports.backgroundPosition4 = backgroundPosition4;
exports.backgroundPositionString = backgroundPositionString;
exports.backgroundStyle = backgroundStyle;
exports.backgroundStyle2 = backgroundStyle2;
exports.backgroundStyle3 = backgroundStyle3;
exports.backgroundStyle4 = backgroundStyle4;
exports.backgroundStyleString = backgroundStyleString;
/* No side effect */
