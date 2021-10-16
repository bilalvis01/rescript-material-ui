// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");

function tonalOffset(v) {
  var v$1 = v.tonalOffset;
  if (typeof v$1 === "number") {
    return {
            TAG: /* Number */0,
            _0: v$1
          };
  } else {
    return {
            TAG: /* Obj */1,
            _0: v$1
          };
  }
}

function augmentColor(palette, options) {
  var color = options.color;
  var mainShade = options.mainShade;
  var lightShade = options.lightShade;
  var darkShade = options.darkShade;
  return palette.augmentColor(color, mainShade, lightShade, darkShade);
}

function make(prim0, prim1, prim2, prim3, prim4, prim5, prim6, prim7, prim8, prim9, prim10, prim11, prim12, prim13, prim14, prim15, prim16) {
  var tmp = {};
  if (prim0 !== undefined) {
    tmp.primary = Caml_option.valFromOption(prim0);
  }
  if (prim1 !== undefined) {
    tmp.secondary = Caml_option.valFromOption(prim1);
  }
  if (prim2 !== undefined) {
    tmp.error = Caml_option.valFromOption(prim2);
  }
  if (prim3 !== undefined) {
    tmp.warning = Caml_option.valFromOption(prim3);
  }
  if (prim4 !== undefined) {
    tmp.info = Caml_option.valFromOption(prim4);
  }
  if (prim5 !== undefined) {
    tmp.success = Caml_option.valFromOption(prim5);
  }
  if (prim6 !== undefined) {
    tmp.type = Caml_option.valFromOption(prim6);
  }
  if (prim7 !== undefined) {
    tmp.tonalOffset = Caml_option.valFromOption(prim7);
  }
  if (prim8 !== undefined) {
    tmp.contrastThreshold = prim8;
  }
  if (prim9 !== undefined) {
    tmp.common = Caml_option.valFromOption(prim9);
  }
  if (prim10 !== undefined) {
    tmp.grey = Caml_option.valFromOption(prim10);
  }
  if (prim11 !== undefined) {
    tmp.text = Caml_option.valFromOption(prim11);
  }
  if (prim12 !== undefined) {
    tmp.divider = prim12;
  }
  if (prim13 !== undefined) {
    tmp.action = Caml_option.valFromOption(prim13);
  }
  if (prim14 !== undefined) {
    tmp.background = Caml_option.valFromOption(prim14);
  }
  if (prim15 !== undefined) {
    tmp.getContrastText = Caml_option.valFromOption(prim15);
  }
  return tmp;
}

exports.tonalOffset = tonalOffset;
exports.augmentColor = augmentColor;
exports.make = make;
/* No side effect */