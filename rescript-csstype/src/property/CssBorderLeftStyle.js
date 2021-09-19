// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var CssDeclaration$Ress = require("../declaration/CssDeclaration.js");
var CssDeclarationFn$Ress = require("../declaration/CssDeclarationFn.js");
var CssBorderSideStyle$Ress = require("./CssBorderSideStyle.js");

var property = "borderLeftStyle";

var include = CssBorderSideStyle$Ress.MakeValue({});

var value = include.value;

function borderLeftStyle(v) {
  return CssDeclaration$Ress.Helper.declaration(property, Curry._1(value, v));
}

function borderLeftStyleUnion(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

function borderLeftStyleString(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

var DeclarationHelper = {
  borderLeftStyle: borderLeftStyle,
  borderLeftStyleUnion: borderLeftStyleUnion,
  borderLeftStyleString: borderLeftStyleString
};

function borderLeftStyleFn(v) {
  return CssDeclarationFn$Ress.Helper.declarationFn(property, v);
}

var DeclarationFnHelper = {
  borderLeftStyleFn: borderLeftStyleFn
};

exports.value = value;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* include Not a pure module */
