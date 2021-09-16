// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssDeclaration$Ress = require("../declaration/CssDeclaration.js");
var CssValueString$Ress = require("../value/CssValueString.js");
var CssDeclarationFn$Ress = require("../declaration/CssDeclarationFn.js");

var property = "fontWeight";

var value = CssValueString$Ress.fontWeight_global;

function fontWeight(v) {
  return CssDeclaration$Ress.Helper.declaration(property, CssValueString$Ress.fontWeight_global(v));
}

function fontWeightUnion(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

function fontWeightString(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

function fontWeightNumber(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

var DeclarationHelper = {
  fontWeight: fontWeight,
  fontWeightUnion: fontWeightUnion,
  fontWeightString: fontWeightString,
  fontWeightNumber: fontWeightNumber
};

function fontWeightFn(v) {
  return CssDeclarationFn$Ress.Helper.declarationFn(property, v);
}

var DeclarationFnHelper = {
  fontWeight: fontWeight,
  fontWeightUnion: fontWeightUnion,
  fontWeightString: fontWeightString,
  fontWeightNumber: fontWeightNumber,
  fontWeightFn: fontWeightFn
};

exports.value = value;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* No side effect */
