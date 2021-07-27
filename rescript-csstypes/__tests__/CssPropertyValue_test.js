// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Css$Css = require("../src/Css.js");
var CssPropertyValue$Css = require("../src/CssPropertyValue.js");

describe("border", (function () {
        test("border", (function () {
                expect(CssPropertyValue$Css.border(undefined, undefined, "solid")).toBe("solid");
                expect(CssPropertyValue$Css.border(undefined, "red", "dashed")).toBe("red dashed");
                expect(CssPropertyValue$Css.border(Css$Css.rem(1.0), undefined, "solid")).toBe("1rem solid");
                expect(CssPropertyValue$Css.border("thick", Css$Css.rgbX("32a1ce"), "double")).toBe("thick #32a1ce double");
                expect(CssPropertyValue$Css.border(Css$Css.mm(4), Css$Css.rgba(170, 50, 220, 0.6), "ridge")).toBe("4mm rgba(170, 50, 220, 0.6) ridge");
                
              }));
        test("borderStyle", (function () {
                expect(CssPropertyValue$Css.borderStyle("solid")).toBe("solid");
                expect(CssPropertyValue$Css.borderStyle2("solid", "dashed")).toBe("solid dashed");
                expect(CssPropertyValue$Css.borderStyle3("solid", "dashed", "dotted")).toBe("solid dashed dotted");
                expect(CssPropertyValue$Css.borderStyle4("dashed", "solid", "dotted", "inset")).toBe("dashed solid dotted inset");
                
              }));
        test("borderWidth", (function () {
                expect(CssPropertyValue$Css.borderWidth(Css$Css.px(1))).toBe("1px");
                expect(CssPropertyValue$Css.borderWidth2("thin", "medium")).toBe("thin medium");
                expect(CssPropertyValue$Css.borderWidth3("thin", "medium", Css$Css.px(2))).toBe("thin medium 2px");
                expect(CssPropertyValue$Css.borderWidth4("medium", Css$Css.px(2), "thin", Css$Css.px(4))).toBe("medium 2px thin 4px");
                
              }));
        test("borderColor", (function () {
                expect(CssPropertyValue$Css.borderColor("red")).toBe("red");
                expect(CssPropertyValue$Css.borderColor2("red", Css$Css.rgbX("000000ff"))).toBe("red #000000ff");
                expect(CssPropertyValue$Css.borderColor3("red", Css$Css.rgb(255, 255, 255), Css$Css.hsl(360, Css$Css.pct(100), Css$Css.pct(50)))).toBe("red rgb(255, 255, 255) hsl(360, 100%, 50%)");
                expect(CssPropertyValue$Css.borderColor4("blue", Css$Css.rgba(0, 0, 0, 0.5), "red", Css$Css.rgb(255, 255, 255))).toBe("blue rgba(0, 0, 0, 0.5) red rgb(255, 255, 255)");
                
              }));
        test("background", (function () {
                expect(CssPropertyValue$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "initial")).toBe("initial");
                expect(CssPropertyValue$Css.background("red", undefined, undefined, undefined, undefined, undefined, undefined, "initial")).toBe("initial");
                expect(CssPropertyValue$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "red")).toBe("red");
                expect(CssPropertyValue$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Css.rgb(255, 255, 255))).toBe("rgb(255, 255, 255)");
                expect(CssPropertyValue$Css.background(undefined, undefined, undefined, "repeat-y", undefined, undefined, undefined, Css$Css.url("test.jpg"))).toBe("url(\"test.jpg\") repeat-y");
                expect(CssPropertyValue$Css.background2(Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))))).toBe("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)");
                expect(CssPropertyValue$Css.background3(Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))))).toBe("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)");
                expect(CssPropertyValue$Css.background4(Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))))).toBe("linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)");
                expect(CssPropertyValue$Css.background4(Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")), Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")), Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")), Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")))).toBe("url(\"myimage.png\") repeat, url(\"myimage.png\") repeat, url(\"myimage.png\") repeat, url(\"myimage.png\") repeat");
                
              }));
        
      }));

/*  Not a pure module */
