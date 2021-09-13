// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var CssPadding$Ress = require("../../src/property/CssPadding.js");
var CssPaddingSide$Ress = require("../../src/property/CssPaddingSide.js");
var CssValueHelper$Ress = require("../../src/value/CssValueHelper.js");

var include = CssPaddingSide$Ress.MakeValue({});

var value = include.value;

var PaddingSide = {
  value: value
};

test("padding", (function () {
        expect(CssPadding$Ress.value(CssValueHelper$Ress.px(24))).toBe("24px");
        expect(CssPadding$Ress.value("initial")).toBe("initial");
        expect(CssPadding$Ress.value2(CssValueHelper$Ress.rem(2), CssValueHelper$Ress.rem(4))).toBe("2rem 4rem");
        expect(CssPadding$Ress.value3(CssValueHelper$Ress.px(10), CssValueHelper$Ress.px(24), CssValueHelper$Ress.px(40))).toBe("10px 24px 40px");
        expect(CssPadding$Ress.value4(CssValueHelper$Ress.px(20), CssValueHelper$Ress.px(40), CssValueHelper$Ress.px(20), CssValueHelper$Ress.px(40))).toBe("20px 40px 20px 40px");
        expect(Curry._1(value, CssValueHelper$Ress.px(24))).toBe("24px");
        expect(Curry._1(value, "initial")).toBe("initial");
        
      }));

var Padding;

exports.Padding = Padding;
exports.PaddingSide = PaddingSide;
/* include Not a pure module */