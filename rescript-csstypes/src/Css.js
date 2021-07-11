// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssPropertyValue$Css = require("./CssPropertyValue.js");

function num(v) {
  return {
          NAME: "number",
          VAL: v
        };
}

function $$int(v) {
  return {
          NAME: "int",
          VAL: v
        };
}

function str(v) {
  return {
          NAME: "string",
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

function rgbHex(v) {
  return {
          NAME: "rgbHex",
          VAL: v
        };
}

function makeProperty(v1, v2) {
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

function border2(v1, v2) {
  return [
          "border",
          CssPropertyValue$Css.border2(v1, v2)
        ];
}

function border3(v1, v2, v3) {
  return [
          "border",
          CssPropertyValue$Css.border3(v1, v2, v3)
        ];
}

exports.num = num;
exports.$$int = $$int;
exports.str = str;
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
exports.pct = pct;
exports.deg = deg;
exports.grad = grad;
exports.rad = rad;
exports.turn = turn;
exports.hsl = hsl;
exports.hsla = hsla;
exports.rgb = rgb;
exports.rgba = rgba;
exports.rgbHex = rgbHex;
exports.makeProperty = makeProperty;
exports.border = border;
exports.border2 = border2;
exports.border3 = border3;
/* No side effect */
