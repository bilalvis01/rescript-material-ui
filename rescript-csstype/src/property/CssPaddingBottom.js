// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var CssPaddingSide$Ress = require("./CssPaddingSide.js");

var property = "paddingBottom";

var include = CssPaddingSide$Ress.MakeValue({});

var value = include.value;

function paddingBottom(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            Curry._1(value, v)
          ]
        };
}

function paddingBottomUnion(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

function paddingBottomString(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

function paddingBottomNumber(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationHelper = {
  paddingBottom: paddingBottom,
  paddingBottomUnion: paddingBottomUnion,
  paddingBottomString: paddingBottomString,
  paddingBottomNumber: paddingBottomNumber
};

function paddingBottomFn(v) {
  return {
          NAME: "DeclarationFn",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationFnHelper = {
  paddingBottom: paddingBottom,
  paddingBottomUnion: paddingBottomUnion,
  paddingBottomString: paddingBottomString,
  paddingBottomNumber: paddingBottomNumber,
  paddingBottomFn: paddingBottomFn
};

exports.value = value;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* include Not a pure module */