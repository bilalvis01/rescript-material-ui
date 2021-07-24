// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Css$Css = require("../src/Css.js");

describe("property", (function () {
        test("property", (function () {
                expect(Css$Css.property("border", "solid")).toEqual([
                      "border",
                      "solid"
                    ]);
                expect(Css$Css.propertyString("borderStyle", "dotted")).toEqual([
                      "borderStyle",
                      "dotted"
                    ]);
                expect(Css$Css.propertyNumber("padding", 1)).toEqual([
                      "padding",
                      1.0
                    ]);
                expect(Css$Css.propertyInteger("padding", 1)).toEqual([
                      "padding",
                      1
                    ]);
                
              }));
        
      }));

describe("border", (function () {
        test("border", (function () {
                expect(Css$Css.border("dotted")).toEqual(Css$Css.propertyString("border", "dotted"));
                expect(Css$Css.border2("solid", Css$Css.px(1))).toEqual(Css$Css.propertyString("border", "solid 1px"));
                expect(Css$Css.border3(Css$Css.px(1), "dotted", Css$Css.rgb(255, 255, 255))).toEqual(Css$Css.propertyString("border", "1px dotted rgb(255, 255, 255)"));
                
              }));
        test("borderTop", (function () {
                expect(Css$Css.borderTop("dotted")).toEqual(Css$Css.propertyString("borderTop", "dotted"));
                expect(Css$Css.borderTop2("solid", Css$Css.px(1))).toEqual(Css$Css.propertyString("borderTop", "solid 1px"));
                expect(Css$Css.borderTop3(Css$Css.px(1), "dotted", Css$Css.rgb(255, 255, 255))).toEqual(Css$Css.propertyString("borderTop", "1px dotted rgb(255, 255, 255)"));
                
              }));
        test("borderRight", (function () {
                expect(Css$Css.borderRight("dotted")).toEqual(Css$Css.propertyString("borderRight", "dotted"));
                expect(Css$Css.borderRight2("solid", Css$Css.px(1))).toEqual(Css$Css.propertyString("borderRight", "solid 1px"));
                expect(Css$Css.borderRight3(Css$Css.px(1), "dotted", Css$Css.rgb(255, 255, 255))).toEqual(Css$Css.propertyString("borderRight", "1px dotted rgb(255, 255, 255)"));
                
              }));
        test("borderBottom", (function () {
                expect(Css$Css.borderBottom("dotted")).toEqual(Css$Css.propertyString("borderBottom", "dotted"));
                expect(Css$Css.borderBottom2("solid", Css$Css.px(1))).toEqual(Css$Css.propertyString("borderBottom", "solid 1px"));
                expect(Css$Css.borderBottom3(Css$Css.px(1), "dotted", Css$Css.rgb(255, 255, 255))).toEqual(Css$Css.propertyString("borderBottom", "1px dotted rgb(255, 255, 255)"));
                
              }));
        test("borderLeft", (function () {
                expect(Css$Css.borderLeft("dotted")).toEqual(Css$Css.propertyString("borderLeft", "dotted"));
                expect(Css$Css.borderLeft2("solid", Css$Css.px(1))).toEqual(Css$Css.propertyString("borderLeft", "solid 1px"));
                expect(Css$Css.borderLeft3(Css$Css.px(1), "dotted", Css$Css.rgb(255, 255, 255))).toEqual(Css$Css.propertyString("borderLeft", "1px dotted rgb(255, 255, 255)"));
                
              }));
        test("borderWidth", (function () {
                expect(Css$Css.borderWidth(Css$Css.px(1))).toEqual(Css$Css.propertyString("borderWidth", "1px"));
                expect(Css$Css.borderWidth2(Css$Css.px(1), "thin")).toEqual(Css$Css.propertyString("borderWidth", "1px thin"));
                expect(Css$Css.borderWidth3("thin", "medium", "thick")).toEqual(Css$Css.propertyString("borderWidth", "thin medium thick"));
                expect(Css$Css.borderWidth4(Css$Css.px(1), "thin", Css$Css.px(1), "thick")).toEqual(Css$Css.propertyString("borderWidth", "1px thin 1px thick"));
                
              }));
        test("borderTopWidth", (function () {
                expect(Css$Css.borderTopWidth(Css$Css.px(1))).toEqual(Css$Css.propertyString("borderTopWidth", "1px"));
                expect(Css$Css.borderTopWidth2(Css$Css.px(1), "thin")).toEqual(Css$Css.propertyString("borderTopWidth", "1px thin"));
                expect(Css$Css.borderTopWidth3("thin", "medium", "thick")).toEqual(Css$Css.propertyString("borderTopWidth", "thin medium thick"));
                expect(Css$Css.borderTopWidth4(Css$Css.px(1), "thin", Css$Css.px(1), "thick")).toEqual(Css$Css.propertyString("borderTopWidth", "1px thin 1px thick"));
                
              }));
        test("borderRightWidth", (function () {
                expect(Css$Css.borderRightWidth(Css$Css.px(1))).toEqual(Css$Css.propertyString("borderRightWidth", "1px"));
                expect(Css$Css.borderRightWidth2(Css$Css.px(1), "thin")).toEqual(Css$Css.propertyString("borderRightWidth", "1px thin"));
                expect(Css$Css.borderRightWidth3("thin", "medium", "thick")).toEqual(Css$Css.propertyString("borderRightWidth", "thin medium thick"));
                expect(Css$Css.borderRightWidth4(Css$Css.px(1), "thin", Css$Css.px(1), "thick")).toEqual(Css$Css.propertyString("borderRightWidth", "1px thin 1px thick"));
                
              }));
        test("borderBottomWidth", (function () {
                expect(Css$Css.borderBottomWidth(Css$Css.px(1))).toEqual(Css$Css.propertyString("borderBottomWidth", "1px"));
                expect(Css$Css.borderBottomWidth2(Css$Css.px(1), "thin")).toEqual(Css$Css.propertyString("borderBottomWidth", "1px thin"));
                expect(Css$Css.borderBottomWidth3("thin", "medium", "thick")).toEqual(Css$Css.propertyString("borderBottomWidth", "thin medium thick"));
                expect(Css$Css.borderBottomWidth4(Css$Css.px(1), "thin", Css$Css.px(1), "thick")).toEqual(Css$Css.propertyString("borderBottomWidth", "1px thin 1px thick"));
                
              }));
        test("borderLeftWidth", (function () {
                expect(Css$Css.borderLeftWidth(Css$Css.px(1))).toEqual(Css$Css.propertyString("borderLeftWidth", "1px"));
                expect(Css$Css.borderLeftWidth2(Css$Css.px(1), "thin")).toEqual(Css$Css.propertyString("borderLeftWidth", "1px thin"));
                expect(Css$Css.borderLeftWidth3("thin", "medium", "thick")).toEqual(Css$Css.propertyString("borderLeftWidth", "thin medium thick"));
                expect(Css$Css.borderLeftWidth4(Css$Css.px(1), "thin", Css$Css.px(1), "thick")).toEqual(Css$Css.propertyString("borderLeftWidth", "1px thin 1px thick"));
                
              }));
        test("borderStyle", (function () {
                expect(Css$Css.borderStyle("unset")).toEqual(Css$Css.propertyString("borderStyle", "unset"));
                expect(Css$Css.borderStyle2("solid", "dotted")).toEqual(Css$Css.propertyString("borderStyle", "solid dotted"));
                expect(Css$Css.borderStyle3("solid", "inset", "dotted")).toEqual(Css$Css.propertyString("borderStyle", "solid inset dotted"));
                expect(Css$Css.borderStyle4("solid", "double", "dotted", "inset")).toEqual(Css$Css.propertyString("borderStyle", "solid double dotted inset"));
                
              }));
        test("borderTopStyle", (function () {
                expect(Css$Css.borderTopStyle("unset")).toEqual(Css$Css.propertyString("borderTopStyle", "unset"));
                expect(Css$Css.borderTopStyle2("solid", "dotted")).toEqual(Css$Css.propertyString("borderTopStyle", "solid dotted"));
                expect(Css$Css.borderTopStyle3("solid", "inset", "dotted")).toEqual(Css$Css.propertyString("borderTopStyle", "solid inset dotted"));
                expect(Css$Css.borderTopStyle4("solid", "double", "dotted", "inset")).toEqual(Css$Css.propertyString("borderTopStyle", "solid double dotted inset"));
                
              }));
        test("borderRightStyle", (function () {
                expect(Css$Css.borderRightStyle("unset")).toEqual(Css$Css.propertyString("borderRightStyle", "unset"));
                expect(Css$Css.borderRightStyle2("solid", "dotted")).toEqual(Css$Css.propertyString("borderRightStyle", "solid dotted"));
                expect(Css$Css.borderRightStyle3("solid", "inset", "dotted")).toEqual(Css$Css.propertyString("borderRightStyle", "solid inset dotted"));
                expect(Css$Css.borderRightStyle4("solid", "double", "dotted", "inset")).toEqual(Css$Css.propertyString("borderRightStyle", "solid double dotted inset"));
                
              }));
        test("borderBottomStyle", (function () {
                expect(Css$Css.borderBottomStyle("unset")).toEqual(Css$Css.propertyString("borderBottomStyle", "unset"));
                expect(Css$Css.borderBottomStyle2("solid", "dotted")).toEqual(Css$Css.propertyString("borderBottomStyle", "solid dotted"));
                expect(Css$Css.borderBottomStyle3("solid", "inset", "dotted")).toEqual(Css$Css.propertyString("borderBottomStyle", "solid inset dotted"));
                expect(Css$Css.borderBottomStyle4("solid", "double", "dotted", "inset")).toEqual(Css$Css.propertyString("borderBottomStyle", "solid double dotted inset"));
                
              }));
        test("borderLeftStyle", (function () {
                expect(Css$Css.borderLeftStyle("unset")).toEqual(Css$Css.propertyString("borderLeftStyle", "unset"));
                expect(Css$Css.borderLeftStyle2("solid", "dotted")).toEqual(Css$Css.propertyString("borderLeftStyle", "solid dotted"));
                expect(Css$Css.borderLeftStyle3("solid", "inset", "dotted")).toEqual(Css$Css.propertyString("borderLeftStyle", "solid inset dotted"));
                expect(Css$Css.borderLeftStyle4("solid", "double", "dotted", "inset")).toEqual(Css$Css.propertyString("borderLeftStyle", "solid double dotted inset"));
                
              }));
        test("borderColor", (function () {
                expect(Css$Css.borderColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderColor2("red", "blue")).toEqual(Css$Css.propertyString("borderColor", "red blue"));
                expect(Css$Css.borderColor3(Css$Css.rgbX("000000"), Css$Css.rgbX("000000"), Css$Css.rgbX("111111"))).toEqual(Css$Css.propertyString("borderColor", "#000000 #000000 #111111"));
                expect(Css$Css.borderColor4("red", "turquoise", "purple", "deeppink")).toEqual(Css$Css.propertyString("borderColor", "red turquoise purple deeppink"));
                
              }));
        test("borderTopColor", (function () {
                expect(Css$Css.borderTopColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderTopColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderTopColor2("red", "blue")).toEqual(Css$Css.propertyString("borderTopColor", "red blue"));
                expect(Css$Css.borderTopColor3(Css$Css.rgbX("000000"), Css$Css.rgbX("000000"), Css$Css.rgbX("111111"))).toEqual(Css$Css.propertyString("borderTopColor", "#000000 #000000 #111111"));
                expect(Css$Css.borderTopColor4("red", "turquoise", "purple", "deeppink")).toEqual(Css$Css.propertyString("borderTopColor", "red turquoise purple deeppink"));
                
              }));
        test("borderRightColor", (function () {
                expect(Css$Css.borderRightColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderRightColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderRightColor2("red", "blue")).toEqual(Css$Css.propertyString("borderRightColor", "red blue"));
                expect(Css$Css.borderRightColor3(Css$Css.rgbX("000000"), Css$Css.rgbX("000000"), Css$Css.rgbX("111111"))).toEqual(Css$Css.propertyString("borderRightColor", "#000000 #000000 #111111"));
                expect(Css$Css.borderRightColor4("red", "turquoise", "purple", "deeppink")).toEqual(Css$Css.propertyString("borderRightColor", "red turquoise purple deeppink"));
                
              }));
        test("borderBottomColor", (function () {
                expect(Css$Css.borderBottomColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderBottomColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderBottomColor2("red", "blue")).toEqual(Css$Css.propertyString("borderBottomColor", "red blue"));
                expect(Css$Css.borderBottomColor3(Css$Css.rgbX("000000"), Css$Css.rgbX("000000"), Css$Css.rgbX("111111"))).toEqual(Css$Css.propertyString("borderBottomColor", "#000000 #000000 #111111"));
                expect(Css$Css.borderBottomColor4("red", "turquoise", "purple", "deeppink")).toEqual(Css$Css.propertyString("borderBottomColor", "red turquoise purple deeppink"));
                
              }));
        test("borderLeftColor", (function () {
                expect(Css$Css.borderLeftColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderLeftColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderLeftColor2("red", "blue")).toEqual(Css$Css.propertyString("borderLeftColor", "red blue"));
                expect(Css$Css.borderLeftColor3(Css$Css.rgbX("000000"), Css$Css.rgbX("000000"), Css$Css.rgbX("111111"))).toEqual(Css$Css.propertyString("borderLeftColor", "#000000 #000000 #111111"));
                expect(Css$Css.borderLeftColor4("red", "turquoise", "purple", "deeppink")).toEqual(Css$Css.propertyString("borderLeftColor", "red turquoise purple deeppink"));
                
              }));
        
      }));

/*  Not a pure module */
