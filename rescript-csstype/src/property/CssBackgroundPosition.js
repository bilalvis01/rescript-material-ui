// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssValueString$Ress = require("../value/CssValueString.js");

var property = "backgroundPosition";

var value = CssValueString$Ress.position;

function value2(v1, v2) {
  return CssValueString$Ress.position(v1) + ", " + CssValueString$Ress.position(v2);
}

function value3(v1, v2, v3) {
  return CssValueString$Ress.position(v1) + ", " + CssValueString$Ress.position(v2) + ", " + CssValueString$Ress.position(v3);
}

function value4(v1, v2, v3, v4) {
  return CssValueString$Ress.position(v1) + ", " + CssValueString$Ress.position(v2) + ", " + CssValueString$Ress.position(v3) + ", " + CssValueString$Ress.position(v4);
}

function backgroundPosition(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            CssValueString$Ress.position(v)
          ]
        };
}

function backgroundPosition2(v1, v2) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            value2(v1, v2)
          ]
        };
}

function backgroundPosition3(v1, v2, v3) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            value3(v1, v2, v3)
          ]
        };
}

function backgroundPosition4(v1, v2, v3, v4) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            value4(v1, v2, v3, v4)
          ]
        };
}

function backgroundPositionUnion(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

function backgroundPositionString(v) {
  return {
          NAME: "Declaration",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationHelper = {
  backgroundPosition: backgroundPosition,
  backgroundPosition2: backgroundPosition2,
  backgroundPosition3: backgroundPosition3,
  backgroundPosition4: backgroundPosition4,
  backgroundPositionUnion: backgroundPositionUnion,
  backgroundPositionString: backgroundPositionString
};

function backgroundPositionFn(v) {
  return {
          NAME: "DeclarationFn",
          VAL: [
            property,
            v
          ]
        };
}

var DeclarationFnHelper = {
  backgroundPosition: backgroundPosition,
  backgroundPosition2: backgroundPosition2,
  backgroundPosition3: backgroundPosition3,
  backgroundPosition4: backgroundPosition4,
  backgroundPositionUnion: backgroundPositionUnion,
  backgroundPositionString: backgroundPositionString,
  backgroundPositionFn: backgroundPositionFn
};

exports.value = value;
exports.value2 = value2;
exports.value3 = value3;
exports.value4 = value4;
exports.DeclarationHelper = DeclarationHelper;
exports.DeclarationFnHelper = DeclarationFnHelper;
/* No side effect */