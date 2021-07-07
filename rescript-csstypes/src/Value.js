// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var ValueToString$Css = require("./ValueToString.js");

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

var Basic = {
  num: num,
  $$int: $$int,
  str: str,
  ch: ch,
  em: em,
  ex: ex,
  rem: rem,
  vh: vh,
  vw: vw,
  vmin: vmin,
  vmax: vmax,
  px: px,
  cm: cm,
  mm: mm,
  inch: inch,
  pc: pc,
  pt: pt,
  pct: pct,
  deg: deg,
  grad: grad,
  rad: rad,
  turn: turn,
  hsl: hsl,
  hsla: hsla,
  rgb: rgb,
  rgba: rgba,
  rgbHex: rgbHex
};

function many(v) {
  return {
          NAME: "many",
          VAL: v
        };
}

function stack(v) {
  return {
          NAME: "stack",
          VAL: v
        };
}

function join(v1, v2) {
  return {
          NAME: "join",
          VAL: [
            v1,
            v2
          ]
        };
}

function concat(v1, v2) {
  return {
          NAME: "concat",
          VAL: [
            v1,
            v2
          ]
        };
}

var Combinator = {
  many: many,
  stack: stack,
  join: join,
  concat: concat
};

var make = ValueToString$Css.border;

function make2(v1, v2) {
  return ValueToString$Css.border(concat(v1, v2));
}

function make3(v1, v2, v3) {
  return ValueToString$Css.border(concat(concat(v1, v2), v3));
}

var Border = {
  make: make,
  make2: make2,
  make3: make3
};

function borderColor2(v1, v2) {
  return ValueToString$Css.borderColor(v1) + " " + ValueToString$Css.borderColor(v2);
}

function borderColor3(v1, v2, v3) {
  return ValueToString$Css.borderColor(v1) + " " + ValueToString$Css.borderColor(v2) + " " + ValueToString$Css.borderColor(v3);
}

function borderColor4(v1, v2, v3, v4) {
  return ValueToString$Css.borderColor(v1) + " " + ValueToString$Css.borderColor(v2) + " " + ValueToString$Css.borderColor(v3) + " " + ValueToString$Css.borderColor(v4);
}

exports.Basic = Basic;
exports.Combinator = Combinator;
exports.Border = Border;
exports.borderColor2 = borderColor2;
exports.borderColor3 = borderColor3;
exports.borderColor4 = borderColor4;
/* No side effect */
