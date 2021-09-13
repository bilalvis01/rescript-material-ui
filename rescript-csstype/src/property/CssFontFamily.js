// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssValueString$Ress = require("../value/CssValueString.js");

var property = "fontFamily";

var value = CssValueString$Ress.fontFamily_global;

function value2(v1, v2) {
  return CssValueString$Ress.fontFamily(v1) + ", " + CssValueString$Ress.fontFamily(v2);
}

function value3(v1, v2, v3) {
  return CssValueString$Ress.fontFamily(v1) + ", " + CssValueString$Ress.fontFamily(v2) + ", " + CssValueString$Ress.fontFamily(v3);
}

function value4(v1, v2, v3, v4) {
  return CssValueString$Ress.fontFamily(v1) + ", " + CssValueString$Ress.fontFamily(v2) + ", " + CssValueString$Ress.fontFamily(v3) + ", " + CssValueString$Ress.fontFamily(v4);
}

function fontFamily(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            CssValueString$Ress.fontFamily_global(v)
          ]
        };
}

function fontFamily2(v1, v2) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            value2(v1, v2)
          ]
        };
}

function fontFamily3(v1, v2, v3) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            value3(v1, v2, v3)
          ]
        };
}

function fontFamily4(v1, v2, v3, v4) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            value4(v1, v2, v3, v4)
          ]
        };
}

function fontFamilyUnion(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

function fontFamilyString(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationHelper = {
  fontFamily: fontFamily,
  fontFamily2: fontFamily2,
  fontFamily3: fontFamily3,
  fontFamily4: fontFamily4,
  fontFamilyUnion: fontFamilyUnion,
  fontFamilyString: fontFamilyString
};

function fontFamilyFn(v) {
  return {
          NAME: "DeclarationFn",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationFnHelper = {
  fontFamily: fontFamily,
  fontFamily2: fontFamily2,
  fontFamily3: fontFamily3,
  fontFamily4: fontFamily4,
  fontFamilyUnion: fontFamilyUnion,
  fontFamilyString: fontFamilyString,
  fontFamilyFn: fontFamilyFn
};

exports.value = value;
exports.value2 = value2;
exports.value3 = value3;
exports.value4 = value4;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* No side effect */
