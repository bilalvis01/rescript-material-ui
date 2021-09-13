// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Js_dict = require("rescript/lib/js/js_dict.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");
var CssFontFacePropertyValue$Ress = require("./CssFontFacePropertyValue.js");

function descriptors(descriptors$1) {
  return Js_dict.fromArray(Belt_Array.map(descriptors$1, (function (descriptor) {
                    return [
                            "fontDisplay",
                            descriptor.VAL
                          ];
                  })));
}

function fontDisplay(v) {
  return {
          NAME: "FontDisplay",
          VAL: CssFontFacePropertyValue$Ress.fontDisplay(v)
        };
}

function fontDisplayString(v) {
  return {
          NAME: "FontDisplay",
          VAL: v
        };
}

exports.descriptors = descriptors;
exports.fontDisplay = fontDisplay;
exports.fontDisplayString = fontDisplayString;
/* No side effect */