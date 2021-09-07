// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var CssBorderSideColor$Ress = require("./CssBorderSideColor.js");

var property = "borderRightColor";

function Make(Type) {
  var include = CssBorderSideColor$Ress.Make({});
  var value = include.value;
  var borderRightColor = function (v) {
    return {
            NAME: "Declaration",
            VAL: [
              property,
              Curry._1(value, v)
            ]
          };
  };
  var borderRightColorUnion = function (v) {
    return {
            NAME: "Declaration",
            VAL: [
              property,
              v
            ]
          };
  };
  var borderRightColorString = function (v) {
    return {
            NAME: "Declaration",
            VAL: [
              property,
              v
            ]
          };
  };
  var DeclarationHelper = {
    borderRightColor: borderRightColor,
    borderRightColorUnion: borderRightColorUnion,
    borderRightColorString: borderRightColorString
  };
  var borderRightColorFn = function (v) {
    return {
            NAME: "DeclarationFn",
            VAL: [
              property,
              v
            ]
          };
  };
  var DeclarationFnHelper = {
    borderRightColor: borderRightColor,
    borderRightColorUnion: borderRightColorUnion,
    borderRightColorString: borderRightColorString,
    borderRightColorFn: borderRightColorFn
  };
  return {
          value: value,
          DeclarationHelper: DeclarationHelper,
          DeclarationFnHelper: DeclarationFnHelper
        };
}

exports.Make = Make;
/* No side effect */
