// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var CssBorderSideWidth$Ress = require("./CssBorderSideWidth.js");

var property = "borderLeftWidth";

var include = CssBorderSideWidth$Ress.MakeValue({});

var value = include.value;

function borderLeftWidth(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            Curry._1(value, v)
          ]
        };
}

function borderLeftWidthUnion(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

function borderLeftWidthString(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationHelper = {
  borderLeftWidth: borderLeftWidth,
  borderLeftWidthUnion: borderLeftWidthUnion,
  borderLeftWidthString: borderLeftWidthString
};

function borderLeftWidthFn(v) {
  return {
          NAME: "DeclarationFn",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationFnHelper = {
  borderLeftWidth: borderLeftWidth,
  borderLeftWidthUnion: borderLeftWidthUnion,
  borderLeftWidthString: borderLeftWidthString,
  borderLeftWidthFn: borderLeftWidthFn
};

exports.value = value;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* include Not a pure module */
