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

function hsl(v1, v2, v3) {
  return {
          NAME: "hsl",
          VAL: [
            v1,
            v2,
            v3
          ]
        };
}

function hsla(v1, v2, v3, v4) {
  return {
          NAME: "hsla",
          VAL: [
            v1,
            v2,
            v3,
            v4
          ]
        };
}

function rgb(v1, v2, v3) {
  return {
          NAME: "rgb",
          VAL: [
            v1,
            v2,
            v3
          ]
        };
}

function rgba(v1, v2, v3, v4) {
  return {
          NAME: "rgba",
          VAL: [
            v1,
            v2,
            v3,
            v4
          ]
        };
}

function rgbX(v) {
  return {
          NAME: "rgbX",
          VAL: v
        };
}

function property(v1, v2) {
  return [
          v1,
          v2
        ];
}

function border(v) {
  return [
          "border",
          CssPropertyValue$Css.border(v)
        ];
}

function border2(style, widthOrColor) {
  return [
          "border",
          CssPropertyValue$Css.border2(style, widthOrColor)
        ];
}

function border3(width, style, color) {
  return [
          "border",
          CssPropertyValue$Css.border3(width, style, color)
        ];
}

function borderS(v) {
  return [
          "border",
          v
        ];
}

function borderTop(v) {
  return [
          "borderTop",
          CssPropertyValue$Css.border(v)
        ];
}

function borderTop2(style, widthOrColor) {
  return [
          "borderTop",
          CssPropertyValue$Css.border2(style, widthOrColor)
        ];
}

function borderTop3(width, style, color) {
  return [
          "borderTop",
          CssPropertyValue$Css.border3(width, style, color)
        ];
}

function borderTopS(v) {
  return [
          "borderTop",
          v
        ];
}

function borderLeft(v) {
  return [
          "borderLeft",
          CssPropertyValue$Css.border(v)
        ];
}

function borderLeft2(style, widthOrColor) {
  return [
          "borderLeft",
          CssPropertyValue$Css.border2(style, widthOrColor)
        ];
}

function borderLeft3(width, style, color) {
  return [
          "borderLeft",
          CssPropertyValue$Css.border3(width, style, color)
        ];
}

function borderLeftS(v) {
  return [
          "borderLeft",
          v
        ];
}

function borderRight(v) {
  return [
          "borderRight",
          CssPropertyValue$Css.border(v)
        ];
}

function borderRight2(style, widthOrColor) {
  return [
          "borderRight",
          CssPropertyValue$Css.border2(style, widthOrColor)
        ];
}

function borderRight3(width, style, color) {
  return [
          "borderRight",
          CssPropertyValue$Css.border3(width, style, color)
        ];
}

function borderRightS(v) {
  return [
          "borderRight",
          v
        ];
}

function borderBottom(v) {
  return [
          "borderBottom",
          CssPropertyValue$Css.border(v)
        ];
}

function borderBottom2(style, widthOrColor) {
  return [
          "borderBottom",
          CssPropertyValue$Css.border2(style, widthOrColor)
        ];
}

function borderBottom3(width, style, color) {
  return [
          "borderBottom",
          CssPropertyValue$Css.border3(width, style, color)
        ];
}

function borderBottomS(v) {
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

function borderColorS(v) {
  return [
          "borderColor",
          v
        ];
}

function borderTopColor(v) {
  return [
          "borderTopColor",
          CssPropertyValue$Css.borderColor(v)
        ];
}

function borderTopColor2(tb, lr) {
  return [
          "borderTopColor",
          CssPropertyValue$Css.borderColor2(tb, lr)
        ];
}

function borderTopColor3(top, lr, bottom) {
  return [
          "borderTopColor",
          CssPropertyValue$Css.borderColor3(top, lr, bottom)
        ];
}

function borderTopColor4(top, right, bottom, left) {
  return [
          "borderTopColor",
          CssPropertyValue$Css.borderColor4(top, right, bottom, left)
        ];
}

function borderTopColorS(v) {
  return [
          "borderTopColor",
          v
        ];
}

function borderRightColor(v) {
  return [
          "borderRightColor",
          CssPropertyValue$Css.borderColor(v)
        ];
}

function borderRightColor2(tb, lr) {
  return [
          "borderRightColor",
          CssPropertyValue$Css.borderColor2(tb, lr)
        ];
}

function borderRightColor3(top, lr, bottom) {
  return [
          "borderRightColor",
          CssPropertyValue$Css.borderColor3(top, lr, bottom)
        ];
}

function borderRightColor4(top, right, bottom, left) {
  return [
          "borderRightColor",
          CssPropertyValue$Css.borderColor4(top, right, bottom, left)
        ];
}

function borderRightColorS(v) {
  return [
          "borderRightColor",
          v
        ];
}

function borderLeftColor(v) {
  return [
          "borderLeftColor",
          CssPropertyValue$Css.borderColor(v)
        ];
}

function borderLeftColor2(tb, lr) {
  return [
          "borderLeftColor",
          CssPropertyValue$Css.borderColor2(tb, lr)
        ];
}

function borderLeftColor3(top, lr, bottom) {
  return [
          "borderLeftColor",
          CssPropertyValue$Css.borderColor3(top, lr, bottom)
        ];
}

function borderLeftColor4(top, right, bottom, left) {
  return [
          "borderLeftColor",
          CssPropertyValue$Css.borderColor4(top, right, bottom, left)
        ];
}

function borderLeftColorS(v) {
  return [
          "borderLeftColor",
          v
        ];
}

function borderBottomColor(v) {
  return [
          "borderBottomColor",
          CssPropertyValue$Css.borderColor(v)
        ];
}

function borderBottomColor2(tb, lr) {
  return [
          "borderBottomColor",
          CssPropertyValue$Css.borderColor2(tb, lr)
        ];
}

function borderBottomColor3(top, lr, bottom) {
  return [
          "borderBottomColor",
          CssPropertyValue$Css.borderColor3(top, lr, bottom)
        ];
}

function borderBottomColor4(top, right, bottom, left) {
  return [
          "borderBottomColor",
          CssPropertyValue$Css.borderColor4(top, right, bottom, left)
        ];
}

function borderBottomColorS(v) {
  return [
          "borderBottomColor",
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
exports.hsl = hsl;
exports.hsla = hsla;
exports.rgb = rgb;
exports.rgba = rgba;
exports.rgbX = rgbX;
exports.property = property;
exports.border = border;
exports.border2 = border2;
exports.border3 = border3;
exports.borderS = borderS;
exports.borderTop = borderTop;
exports.borderTop2 = borderTop2;
exports.borderTop3 = borderTop3;
exports.borderTopS = borderTopS;
exports.borderLeft = borderLeft;
exports.borderLeft2 = borderLeft2;
exports.borderLeft3 = borderLeft3;
exports.borderLeftS = borderLeftS;
exports.borderRight = borderRight;
exports.borderRight2 = borderRight2;
exports.borderRight3 = borderRight3;
exports.borderRightS = borderRightS;
exports.borderBottom = borderBottom;
exports.borderBottom2 = borderBottom2;
exports.borderBottom3 = borderBottom3;
exports.borderBottomS = borderBottomS;
exports.borderColor = borderColor;
exports.borderColor2 = borderColor2;
exports.borderColor3 = borderColor3;
exports.borderColor4 = borderColor4;
exports.borderColorS = borderColorS;
exports.borderTopColor = borderTopColor;
exports.borderTopColor2 = borderTopColor2;
exports.borderTopColor3 = borderTopColor3;
exports.borderTopColor4 = borderTopColor4;
exports.borderTopColorS = borderTopColorS;
exports.borderRightColor = borderRightColor;
exports.borderRightColor2 = borderRightColor2;
exports.borderRightColor3 = borderRightColor3;
exports.borderRightColor4 = borderRightColor4;
exports.borderRightColorS = borderRightColorS;
exports.borderBottomColor = borderBottomColor;
exports.borderBottomColor2 = borderBottomColor2;
exports.borderBottomColor3 = borderBottomColor3;
exports.borderBottomColor4 = borderBottomColor4;
exports.borderBottomColorS = borderBottomColorS;
exports.borderLeftColor = borderLeftColor;
exports.borderLeftColor2 = borderLeftColor2;
exports.borderLeftColor3 = borderLeftColor3;
exports.borderLeftColor4 = borderLeftColor4;
exports.borderLeftColorS = borderLeftColorS;
/* No side effect */
