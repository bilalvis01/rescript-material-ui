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
                expect(Css$Css.border(undefined, undefined, "dotted")).toEqual(Css$Css.propertyString("border", "dotted"));
                expect(Css$Css.border(Css$Css.px(1), undefined, "solid")).toEqual(Css$Css.propertyString("border", "1px solid"));
                expect(Css$Css.border(Css$Css.px(1), Css$Css.rgb(255, 255, 255), "dotted")).toEqual(Css$Css.propertyString("border", "1px rgb(255, 255, 255) dotted"));
                
              }));
        test("borderTop", (function () {
                expect(Css$Css.borderTop(undefined, undefined, "dotted")).toEqual(Css$Css.propertyString("borderTop", "dotted"));
                expect(Css$Css.borderTop(Css$Css.px(1), undefined, "solid")).toEqual(Css$Css.propertyString("borderTop", "1px solid"));
                expect(Css$Css.borderTop(Css$Css.px(1), Css$Css.rgb(255, 255, 255), "dotted")).toEqual(Css$Css.propertyString("borderTop", "1px rgb(255, 255, 255) dotted"));
                
              }));
        test("borderRight", (function () {
                expect(Css$Css.borderRight(undefined, undefined, "dotted")).toEqual(Css$Css.propertyString("borderRight", "dotted"));
                expect(Css$Css.borderRight(Css$Css.px(1), undefined, "solid")).toEqual(Css$Css.propertyString("borderRight", "1px solid"));
                expect(Css$Css.borderRight(Css$Css.px(1), Css$Css.rgb(255, 255, 255), "dotted")).toEqual(Css$Css.propertyString("borderRight", "1px rgb(255, 255, 255) dotted"));
                
              }));
        test("borderBottom", (function () {
                expect(Css$Css.borderBottom(undefined, undefined, "dotted")).toEqual(Css$Css.propertyString("borderBottom", "dotted"));
                expect(Css$Css.borderBottom(Css$Css.px(1), undefined, "solid")).toEqual(Css$Css.propertyString("borderBottom", "1px solid"));
                expect(Css$Css.borderBottom(Css$Css.px(1), Css$Css.rgb(255, 255, 255), "dotted")).toEqual(Css$Css.propertyString("borderBottom", "1px rgb(255, 255, 255) dotted"));
                
              }));
        test("borderLeft", (function () {
                expect(Css$Css.borderLeft(undefined, undefined, "dotted")).toEqual(Css$Css.propertyString("borderLeft", "dotted"));
                expect(Css$Css.borderLeft(Css$Css.px(1), undefined, "solid")).toEqual(Css$Css.propertyString("borderLeft", "1px solid"));
                expect(Css$Css.borderLeft(Css$Css.px(1), Css$Css.rgb(255, 255, 255), "dotted")).toEqual(Css$Css.propertyString("borderLeft", "1px rgb(255, 255, 255) dotted"));
                
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
                expect(Css$Css.borderTopStyle("unset")).toEqual(Css$Css.propertyString("borderTopStyle", "unset"));
                expect(Css$Css.borderRightStyle("unset")).toEqual(Css$Css.propertyString("borderRightStyle", "unset"));
                expect(Css$Css.borderBottomStyle("unset")).toEqual(Css$Css.propertyString("borderBottomStyle", "unset"));
                expect(Css$Css.borderLeftStyle("unset")).toEqual(Css$Css.propertyString("borderLeftStyle", "unset"));
                
              }));
        test("borderColor", (function () {
                expect(Css$Css.borderColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderColor2("red", "blue")).toEqual(Css$Css.propertyString("borderColor", "red blue"));
                expect(Css$Css.borderColor3(Css$Css.rgbX("000000"), Css$Css.rgbX("000000"), Css$Css.rgbX("111111"))).toEqual(Css$Css.propertyString("borderColor", "#000000 #000000 #111111"));
                expect(Css$Css.borderColor4("red", "turquoise", "purple", "deeppink")).toEqual(Css$Css.propertyString("borderColor", "red turquoise purple deeppink"));
                expect(Css$Css.borderTopColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderTopColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderRightColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderRightColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderBottomColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderBottomColor", "hsl(360, 50%, 50%)"));
                expect(Css$Css.borderLeftColor(Css$Css.hsl(360, Css$Css.pct(50), Css$Css.pct(50)))).toEqual(Css$Css.propertyString("borderLeftColor", "hsl(360, 50%, 50%)"));
                
              }));
        
      }));

describe("background", (function () {
        test("background", (function () {
                expect(Css$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "initial")).toEqual(Css$Css.propertyString("background", "initial"));
                expect(Css$Css.background("red", undefined, undefined, undefined, undefined, undefined, undefined, "initial")).toEqual(Css$Css.propertyString("background", "initial"));
                expect(Css$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "red")).toEqual(Css$Css.propertyString("background", "red"));
                expect(Css$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Css.rgb(255, 255, 255))).toEqual(Css$Css.propertyString("background", "rgb(255, 255, 255)"));
                expect(Css$Css.background(undefined, undefined, undefined, "repeat-y", undefined, undefined, undefined, Css$Css.url("test.jpg"))).toEqual(Css$Css.propertyString("background", "url(\"test.jpg\") repeat-y"));
                expect(Css$Css.background2(Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))))).toEqual(Css$Css.propertyString("background", "linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
                expect(Css$Css.background3(Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))))).toEqual(Css$Css.propertyString("background", "linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%)"));
                expect(Css$Css.background4(Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(217), Css$Css.rgba(255, 0, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(255, 0, 0, 0), Css$Css.pct(70.71))), Css$Css.linearGradient2(Css$Css.deg(127), Css$Css.rgba(0, 255, 0, 0.8), Css$Css.linearColorStop2(Css$Css.rgba(0, 255, 0, 0), Css$Css.pct(70.71))))).toEqual(Css$Css.propertyString("background", "linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%), linear-gradient(217deg, rgba(255, 0, 0, 0.8), rgba(255, 0, 0, 0) 70.71%), linear-gradient(127deg, rgba(0, 255, 0, 0.8), rgba(0, 255, 0, 0) 70.71%)"));
                expect(Css$Css.background4(Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")), Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")), Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")), Css$Css.bgLayer(undefined, undefined, undefined, "repeat", undefined, undefined, undefined, Css$Css.url("myimage.png")))).toEqual(Css$Css.propertyString("background", "url(\"myimage.png\") repeat, url(\"myimage.png\") repeat, url(\"myimage.png\") repeat, url(\"myimage.png\") repeat"));
                
              }));
        test("backgroundAttachment", (function () {
                expect(Css$Css.backgroundAttachment("scroll")).toEqual(Css$Css.propertyString("backgroundAttachment", "scroll"));
                expect(Css$Css.backgroundAttachment2("scroll", "fixed")).toEqual(Css$Css.propertyString("backgroundAttachment", "scroll, fixed"));
                expect(Css$Css.backgroundAttachment3("scroll", "fixed", "fixed")).toEqual(Css$Css.propertyString("backgroundAttachment", "scroll, fixed, fixed"));
                expect(Css$Css.backgroundAttachment4("scroll", "fixed", "fixed", "local")).toEqual(Css$Css.propertyString("backgroundAttachment", "scroll, fixed, fixed, local"));
                
              }));
        test("backgroundColor", (function () {
                expect(Css$Css.backgroundColor(Css$Css.rgb(200, 200, 200))).toEqual(Css$Css.propertyString("backgroundColor", "rgb(200, 200, 200)"));
                
              }));
        test("backgroundImage", (function () {
                expect(Css$Css.backgroundImage(Css$Css.url("image.png"))).toEqual(Css$Css.propertyString("backgroundImage", "url(\"image.png\")"));
                expect(Css$Css.backgroundImage2(Css$Css.url("image.png"), Css$Css.image(undefined, undefined, Css$Css.url("myimage.jpg")))).toEqual(Css$Css.propertyString("backgroundImage", "url(\"image.png\"), image(url(\"myimage.jpg\"))"));
                expect(Css$Css.backgroundImage3(Css$Css.url("image.png"), Css$Css.image(undefined, undefined, Css$Css.url("myimage.jpg")), Css$Css.linearGradient(undefined, "red"))).toEqual(Css$Css.propertyString("backgroundImage", "url(\"image.png\"), image(url(\"myimage.jpg\")), linear-gradient(red)"));
                expect(Css$Css.backgroundImage4(Css$Css.url("image.png"), Css$Css.image(undefined, undefined, Css$Css.url("myimage.jpg")), Css$Css.linearGradient(undefined, "red"), Css$Css.radialGradient(undefined, undefined, undefined, "blue"))).toEqual(Css$Css.propertyString("backgroundImage", "url(\"image.png\"), image(url(\"myimage.jpg\")), linear-gradient(red), radial-gradient(blue)"));
                
              }));
        test("backgroundPosition", (function () {
                expect(Css$Css.backgroundPosition(Css$Css.px(10))).toEqual(Css$Css.propertyString("backgroundPosition", "10px"));
                expect(Css$Css.backgroundPosition2(Css$Css.px(10), Css$Css.position2("center", "bottom"))).toEqual(Css$Css.propertyString("backgroundPosition", "10px, center bottom"));
                expect(Css$Css.backgroundPosition3(Css$Css.px(10), Css$Css.position2("center", "bottom"), "center")).toEqual(Css$Css.propertyString("backgroundPosition", "10px, center bottom, center"));
                expect(Css$Css.backgroundPosition4(Css$Css.px(10), Css$Css.position2("center", "bottom"), Css$Css.pct(10), Css$Css.position4("left", Css$Css.px(10), "top", Css$Css.pct(10)))).toEqual(Css$Css.propertyString("backgroundPosition", "10px, center bottom, 10%, left 10px top 10%"));
                
              }));
        test("backgroundStyle", (function () {
                expect(Css$Css.backgroundStyle("repeat-x")).toEqual(Css$Css.propertyString("backgroundStyle", "repeat-x"));
                expect(Css$Css.backgroundStyle2("repeat-x", "repeat repeat")).toEqual(Css$Css.propertyString("backgroundStyle", "repeat-x, repeat repeat"));
                expect(Css$Css.backgroundStyle3("repeat-x", "repeat repeat", "no-repeat")).toEqual(Css$Css.propertyString("backgroundStyle", "repeat-x, repeat repeat, no-repeat"));
                expect(Css$Css.backgroundStyle4("repeat-x", "repeat repeat", "no-repeat", "space")).toEqual(Css$Css.propertyString("backgroundStyle", "repeat-x, repeat repeat, no-repeat, space"));
                
              }));
        
      }));

/*  Not a pure module */
