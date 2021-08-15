// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssValueString$Ress = require("../CssValueString.js");

function value(color, position, size, repeat, attachment, origin, clip, imageOrColor) {
  var imageOrColor$1;
  if (typeof imageOrColor === "object") {
    imageOrColor$1 = imageOrColor;
  } else {
    if (imageOrColor === "inherit" || imageOrColor === "unset" || imageOrColor === "revert" || imageOrColor === "initial") {
      return CssValueString$Ress.$$global(imageOrColor);
    }
    imageOrColor$1 = imageOrColor;
  }
  return CssValueString$Ress.background(color, position, size, repeat, attachment, origin, clip, imageOrColor$1);
}

function value2(l1, l2) {
  return CssValueString$Ress.bgLayer(l1) + ", " + CssValueString$Ress.bgLayer(l2);
}

function value3(l1, l2, l3) {
  return CssValueString$Ress.bgLayer(l1) + ", " + CssValueString$Ress.bgLayer(l2) + ", " + CssValueString$Ress.bgLayer(l3);
}

function value4(l1, l2, l3, l4) {
  return CssValueString$Ress.bgLayer(l1) + ", " + CssValueString$Ress.bgLayer(l2) + ", " + CssValueString$Ress.bgLayer(l3) + ", " + CssValueString$Ress.bgLayer(l4);
}

exports.value = value;
exports.value2 = value2;
exports.value3 = value3;
exports.value4 = value4;
/* No side effect */