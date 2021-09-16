// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssDeclaration$Ress = require("../declaration/CssDeclaration.js");
var CssValueString$Ress = require("../value/CssValueString.js");
var CssDeclarationFn$Ress = require("../declaration/CssDeclarationFn.js");

var property = "backgroundImage";

var value = CssValueString$Ress.bgImage;

function value2(v1, v2) {
  return CssValueString$Ress.bgImage(v1) + ", " + CssValueString$Ress.bgImage(v2);
}

function value3(v1, v2, v3) {
  return CssValueString$Ress.bgImage(v1) + ", " + CssValueString$Ress.bgImage(v2) + ", " + CssValueString$Ress.bgImage(v3);
}

function value4(v1, v2, v3, v4) {
  return CssValueString$Ress.bgImage(v1) + ", " + CssValueString$Ress.bgImage(v2) + ", " + CssValueString$Ress.bgImage(v3) + ", " + CssValueString$Ress.bgImage(v4);
}

function backgroundImage(v) {
  return CssDeclaration$Ress.Helper.declaration(property, CssValueString$Ress.bgImage(v));
}

function backgroundImage2(v1, v2) {
  return CssDeclaration$Ress.Helper.declaration(property, value2(v1, v2));
}

function backgroundImage3(v1, v2, v3) {
  return CssDeclaration$Ress.Helper.declaration(property, value3(v1, v2, v3));
}

function backgroundImage4(v1, v2, v3, v4) {
  return CssDeclaration$Ress.Helper.declaration(property, value4(v1, v2, v3, v4));
}

function backgroundImageUnion(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

function backgroundImageString(v) {
  return CssDeclaration$Ress.Helper.declaration(property, v);
}

var DeclarationHelper = {
  backgroundImage: backgroundImage,
  backgroundImage2: backgroundImage2,
  backgroundImage3: backgroundImage3,
  backgroundImage4: backgroundImage4,
  backgroundImageUnion: backgroundImageUnion,
  backgroundImageString: backgroundImageString
};

function backgroundImageFn(v) {
  return CssDeclarationFn$Ress.Helper.declarationFn(property, v);
}

var DeclarationFnHelper = {
  backgroundImage: backgroundImage,
  backgroundImage2: backgroundImage2,
  backgroundImage3: backgroundImage3,
  backgroundImage4: backgroundImage4,
  backgroundImageUnion: backgroundImageUnion,
  backgroundImageString: backgroundImageString,
  backgroundImageFn: backgroundImageFn
};

exports.value = value;
exports.value2 = value2;
exports.value3 = value3;
exports.value4 = value4;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* No side effect */
