// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var CssMarginSide$Ress = require("./CssMarginSide.js");
var CssDeclaration$Ress = require("../declaration/CssDeclaration.js");
var CssDeclarationFn$Ress = require("../declaration/CssDeclarationFn.js");

var property = "marginBottom";

var include = CssMarginSide$Ress.MakeValue({});

var value = include.value;

function marginBottom(v) {
  return CssDeclaration$Ress.Helper.declaration(property, Curry._1(value, v));
}

function marginBottomUnion(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

function marginBottomString(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

function marginBottomNumber(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

var DeclarationHelper = {
  marginBottom: marginBottom,
  marginBottomUnion: marginBottomUnion,
  marginBottomString: marginBottomString,
  marginBottomNumber: marginBottomNumber
};

function marginBottomFn(v) {
  return CssDeclarationFn$Ress.Helper.declarationFn(property, v);
}

var DeclarationFnHelper = {
  marginBottom: marginBottom,
  marginBottomUnion: marginBottomUnion,
  marginBottomString: marginBottomString,
  marginBottomNumber: marginBottomNumber,
  marginBottomFn: marginBottomFn
};

exports.value = value;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* include Not a pure module */
