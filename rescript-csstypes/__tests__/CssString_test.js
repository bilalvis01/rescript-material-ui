// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Css$Css = require("../src/Css.js");
var CssString$Css = require("../src/CssString.js");

describe("Numeric data types", (function () {
        test("number", (function () {
                expect(CssString$Css.num(1)).toBe("1");
                expect(CssString$Css.number(Css$Css.num(1))).toBe("1");
                
              }));
        test("integer", (function () {
                expect(CssString$Css.$$int(1)).toBe("1");
                expect(CssString$Css.integer(Css$Css.$$int(1))).toBe("1");
                
              }));
        test("percentage", (function () {
                expect(CssString$Css.pct(1)).toBe("1%");
                expect(CssString$Css.percentage(Css$Css.pct(1))).toBe("1%");
                
              }));
        test("ratio", (function () {
                expect(CssString$Css.ratio(Css$Css.ratio(10, 10))).toBe("10/10");
                
              }));
        test("flex", (function () {
                expect(CssString$Css.fr(1)).toBe("1fr");
                expect(CssString$Css.flexUnit(Css$Css.fr(1))).toBe("1fr");
                
              }));
        
      }));

describe("Quantities data types", (function () {
        test("length", (function () {
                expect(CssString$Css.ch(1)).toBe("1ch");
                expect(CssString$Css.em(1)).toBe("1em");
                expect(CssString$Css.ex(1)).toBe("1ex");
                expect(CssString$Css.rem(1)).toBe("1rem");
                expect(CssString$Css.vh(1)).toBe("1vh");
                expect(CssString$Css.vw(1)).toBe("1vw");
                expect(CssString$Css.vmin(1)).toBe("1vmin");
                expect(CssString$Css.vmax(1)).toBe("1vmax");
                expect(CssString$Css.px(1)).toBe("1px");
                expect(CssString$Css.cm(1)).toBe("1cm");
                expect(CssString$Css.mm(1)).toBe("1mm");
                expect(CssString$Css.inch(1)).toBe("1in");
                expect(CssString$Css.pc(1)).toBe("1pc");
                expect(CssString$Css.pt(1)).toBe("1pt");
                expect(CssString$Css.length(Css$Css.mm(1))).toBe("1mm");
                expect(CssString$Css.length(Css$Css.cm(1))).toBe("1cm");
                
              }));
        test("angle", (function () {
                expect(CssString$Css.deg(1)).toBe("1deg");
                expect(CssString$Css.grad(1)).toBe("1grad");
                expect(CssString$Css.rad(1)).toBe("1rad");
                expect(CssString$Css.turn(1)).toBe("1turn");
                expect(CssString$Css.angle(Css$Css.deg(1))).toBe("1deg");
                expect(CssString$Css.angle(Css$Css.grad(1))).toBe("1grad");
                
              }));
        test("time", (function () {
                expect(CssString$Css.s(10)).toBe("10s");
                expect(CssString$Css.ms(10)).toBe("10ms");
                expect(CssString$Css.time(Css$Css.s(10))).toBe("10s");
                expect(CssString$Css.time(Css$Css.ms(10))).toBe("10ms");
                
              }));
        test("frequency", (function () {
                expect(CssString$Css.hz(50)).toBe("50Hz");
                expect(CssString$Css.kHz(100)).toBe("100kHz");
                expect(CssString$Css.kHz(-100)).toBe("-100kHz");
                expect(CssString$Css.frequency(Css$Css.hz(50))).toBe("50Hz");
                expect(CssString$Css.frequency(Css$Css.kHz(100))).toBe("100kHz");
                
              }));
        test("resolution", (function () {
                expect(CssString$Css.dpi(1)).toBe("1dpi");
                expect(CssString$Css.dpcm(1)).toBe("1dpcm");
                expect(CssString$Css.dppx(1)).toBe("1dppx");
                expect(CssString$Css.x(1)).toBe("1x");
                expect(CssString$Css.resolution(Css$Css.dpi(1))).toBe("1dpi");
                
              }));
        
      }));

describe("Combination data types", (function () {
        test("length_percentage", (function () {
                expect(CssString$Css.length_percentage(Css$Css.mm(1))).toBe("1mm");
                expect(CssString$Css.length_percentage(Css$Css.pct(1))).toBe("1%");
                
              }));
        test("frequency_percentage", (function () {
                expect(CssString$Css.frequency_percentage(Css$Css.hz(1))).toBe("1Hz");
                expect(CssString$Css.frequency_percentage(Css$Css.pct(1))).toBe("1%");
                
              }));
        test("angle_percentage", (function () {
                expect(CssString$Css.angle_percentage(Css$Css.deg(1))).toBe("1deg");
                expect(CssString$Css.angle_percentage(Css$Css.pct(1))).toBe("1%");
                
              }));
        test("time_percentage", (function () {
                expect(CssString$Css.time_percentage(Css$Css.s(1))).toBe("1s");
                expect(CssString$Css.time_percentage(Css$Css.pct(1))).toBe("1%");
                
              }));
        
      }));

describe("Color data types", (function () {
        test("color", (function () {
                expect(CssString$Css.hue(Css$Css.deg(1))).toBe("1deg");
                expect(CssString$Css.hue(Css$Css.num(1))).toBe("1");
                expect(CssString$Css.alpha(Css$Css.pct(1))).toBe("1%");
                expect(CssString$Css.alpha(Css$Css.num(1))).toBe("1");
                expect(CssString$Css.rgbParam(Css$Css.pct(1))).toBe("1%");
                expect(CssString$Css.rgbParam(Css$Css.num(1))).toBe("1");
                expect(CssString$Css.hsl(Css$Css.num(1), Css$Css.pct(10), Css$Css.pct(10))).toBe("hsl(1, 10%, 10%)");
                expect(CssString$Css.hsla(Css$Css.num(1), Css$Css.pct(10), Css$Css.pct(10), Css$Css.num(1))).toBe("hsla(1, 10%, 10%, 1)");
                expect(CssString$Css.hsl(1, Css$Css.pct(10), Css$Css.pct(10))).toBe("hsl(1, 10%, 10%)");
                expect(CssString$Css.hsla(1, Css$Css.pct(10), Css$Css.pct(10), Css$Css.num(1))).toBe("hsla(1, 10%, 10%, 1)");
                expect(CssString$Css.rgb(Css$Css.num(1), Css$Css.num(1), Css$Css.pct(10))).toBe("rgb(1, 1, 10%)");
                expect(CssString$Css.rgba(Css$Css.num(1), Css$Css.num(1), Css$Css.pct(10), Css$Css.num(1))).toBe("rgba(1, 1, 10%, 1)");
                expect(CssString$Css.rgb(255, 255, 255)).toBe("rgb(255, 255, 255)");
                expect(CssString$Css.rgba(Css$Css.num(0), Css$Css.num(0), Css$Css.num(0), Css$Css.num(1))).toBe("rgba(0, 0, 0, 1)");
                expect(CssString$Css.rgbX("000000")).toBe("#000000");
                expect(CssString$Css.color(Css$Css.rgbX("000000"))).toBe("#000000");
                expect(CssString$Css.color(Css$Css.rgb(10, 10, 10))).toBe("rgb(10, 10, 10)");
                
              }));
        test("color_global", (function () {
                expect(CssString$Css.color_global(Css$Css.rgb(244, 244, 244))).toBe("rgb(244, 244, 244)");
                expect(CssString$Css.color_global("initial")).toBe("initial");
                
              }));
        
      }));

describe("Line", (function () {
        test("lineWidth", (function () {
                expect(CssString$Css.lineWidth("thick")).toBe("thick");
                expect(CssString$Css.lineWidth(Css$Css.mm(10))).toBe("10mm");
                
              }));
        
      }));

describe("transformOrigin", (function () {
        test("transformOrigin", (function () {
                expect(CssString$Css.transformOrigin("left")).toBe("left");
                expect(CssString$Css.transformOrigin(Css$Css.px(20))).toBe("20px");
                expect(CssString$Css.transformOrigin(Css$Css.transformOrigin2(undefined, "left", "top"))).toBe("left top");
                expect(CssString$Css.transformOrigin(Css$Css.transformOrigin2(Css$Css.px(10), "left", "top"))).toBe("left top 10px");
                
              }));
        
      }));

describe("Image data types", (function () {
        test("gradientLineDirection", (function () {
                expect(CssString$Css.gradientLineAngle("to top")).toBe("to top");
                expect(CssString$Css.gradientLineAngle("to top left")).toBe("to top left");
                expect(CssString$Css.gradientLineAngle(Css$Css.turn(0.25))).toBe("0.25turn");
                
              }));
        test("linearColorStop", (function () {
                expect(CssString$Css.linearColorStop("red")).toBe("red");
                expect(CssString$Css.linearColorStop(Css$Css.rgb(255, 255, 255))).toBe("rgb(255, 255, 255)");
                expect(CssString$Css.linearColorStop(Css$Css.pct(10))).toBe("10%");
                expect(CssString$Css.linearColorStop(Css$Css.px(25))).toBe("25px");
                expect(CssString$Css.linearColorStop(Css$Css.linearColorStop2("red", Css$Css.pct(10)))).toBe("red 10%");
                expect(CssString$Css.linearColorStop(Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(10), Css$Css.pct(50)))).toBe("rgb(255, 255, 255) 10% 50%");
                
              }));
        test("linearGradient", (function () {
                expect(CssString$Css.linearGradient(Css$Css.linearGradient(undefined, Css$Css.rgb(0, 0, 0)))).toBe("linear-gradient(rgb(0, 0, 0))");
                expect(CssString$Css.linearGradient(Css$Css.linearGradient(Css$Css.turn(0.25), Css$Css.rgb(0, 0, 0)))).toBe("linear-gradient(0.25turn, rgb(0, 0, 0))");
                expect(CssString$Css.linearGradient(Css$Css.linearGradient(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
                expect(CssString$Css.linearGradient(Css$Css.linearGradient2(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
                expect(CssString$Css.linearGradient(Css$Css.linearGradient3(undefined, Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40)), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60))))).toBe("linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Css.linearGradient(Css$Css.linearGradient3(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40)), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Css.linearGradient(Css$Css.linearGradient3(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.pct(30), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Css.linearGradient(Css$Css.linearGradient4(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40)), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60)), Css$Css.linearColorStop3("red", Css$Css.pct(70), Css$Css.pct(100))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
                
              }));
        test("repeatingLinearGradient", (function () {
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient(undefined, Css$Css.rgb(0, 0, 0)))).toBe("repeating-linear-gradient(rgb(0, 0, 0))");
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient(Css$Css.turn(0.25), Css$Css.rgb(0, 0, 0)))).toBe("repeating-linear-gradient(0.25turn, rgb(0, 0, 0))");
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient2(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient3(undefined, Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40)), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60))))).toBe("repeating-linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient3(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40)), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient3(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.pct(30), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Css.repeatingLinearGradient(Css$Css.repeatingLinearGradient4(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40)), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60)), Css$Css.linearColorStop3("red", Css$Css.pct(70), Css$Css.pct(100))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
                
              }));
        test("radialGradient", (function () {
                expect(CssString$Css.radialGradient(Css$Css.radialGradient(undefined, undefined, undefined, Css$Css.rgbX("9198e5")))).toBe("radial-gradient(#9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient(undefined, "circle", undefined, Css$Css.rgbX("9198e5")))).toBe("radial-gradient(circle, #9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient("center", "circle", undefined, Css$Css.rgbX("9198e5")))).toBe("radial-gradient(circle at center, #9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient("center", "circle", Css$Css.px(10), Css$Css.rgbX("9198e5")))).toBe("radial-gradient(circle 10px at center, #9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient("center", "ellipse", Css$Css.px(10), Css$Css.rgbX("9198e5")))).toBe("radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient("center", undefined, {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Css.px(10),
                                  Css$Css.px(10)
                                ]
                              }, Css$Css.rgbX("9198e5")))).toBe("radial-gradient(10px 10px at center, #9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient("center", "ellipse", {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Css.px(10),
                                  Css$Css.px(10)
                                ]
                              }, Css$Css.rgbX("9198e5")))).toBe("radial-gradient(ellipse 10px 10px at center, #9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient("center", "ellipse", Css$Css.px(10), Css$Css.rgbX("9198e5")))).toBe("radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient2(undefined, "circle", undefined, Css$Css.rgbX("9198e5"), "red"))).toBe("radial-gradient(circle, #9198e5, red)");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient3(undefined, "circle", undefined, Css$Css.rgbX("9198e5"), "red", Css$Css.rgb(255, 255, 255)))).toBe("radial-gradient(circle, #9198e5, red, rgb(255, 255, 255))");
                expect(CssString$Css.radialGradient(Css$Css.radialGradient4(undefined, "circle", undefined, Css$Css.rgbX("9198e5"), "red", Css$Css.rgb(255, 255, 255), Css$Css.linearColorStop2("blue", Css$Css.pct(10))))).toBe("radial-gradient(circle, #9198e5, red, rgb(255, 255, 255), blue 10%)");
                
              }));
        test("repeatingRadialGradient", (function () {
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient(undefined, undefined, undefined, Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(#9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient(undefined, "circle", undefined, Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle, #9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient("center", "circle", undefined, Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle at center, #9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient("center", "circle", Css$Css.px(10), Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle 10px at center, #9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient("center", "ellipse", Css$Css.px(10), Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient("center", undefined, {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Css.px(10),
                                  Css$Css.px(10)
                                ]
                              }, Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(10px 10px at center, #9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient("center", "ellipse", {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Css.px(10),
                                  Css$Css.px(10)
                                ]
                              }, Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(ellipse 10px 10px at center, #9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient("center", "ellipse", Css$Css.px(10), Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient2(undefined, "circle", undefined, Css$Css.rgbX("9198e5"), "red"))).toBe("repeating-radial-gradient(circle, #9198e5, red)");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient3(undefined, "circle", undefined, Css$Css.rgbX("9198e5"), "red", Css$Css.rgb(255, 255, 255)))).toBe("repeating-radial-gradient(circle, #9198e5, red, rgb(255, 255, 255))");
                expect(CssString$Css.repeatingRadialGradient(Css$Css.repeatingRadialGradient4(undefined, "circle", undefined, Css$Css.rgbX("9198e5"), "red", Css$Css.rgb(255, 255, 255), Css$Css.linearColorStop2("blue", Css$Css.pct(10))))).toBe("repeating-radial-gradient(circle, #9198e5, red, rgb(255, 255, 255), blue 10%)");
                
              }));
        test("conicGradient", (function () {
                expect(CssString$Css.conicGradient(Css$Css.conicGradient(undefined, undefined, "red"))).toBe("conic-gradient(red)");
                expect(CssString$Css.conicGradient(Css$Css.conicGradient(Css$Css.deg(360), undefined, "red"))).toBe("conic-gradient(from 360deg, red)");
                expect(CssString$Css.conicGradient(Css$Css.conicGradient(Css$Css.deg(360), Css$Css.px(10), "red"))).toBe("conic-gradient(from 360deg at 10px, red)");
                expect(CssString$Css.conicGradient(Css$Css.conicGradient2(undefined, undefined, "red", "blue"))).toBe("conic-gradient(red, blue)");
                expect(CssString$Css.conicGradient(Css$Css.conicGradient3(undefined, undefined, "red", "blue", "yellow"))).toBe("conic-gradient(red, blue, yellow)");
                expect(CssString$Css.conicGradient(Css$Css.conicGradient4(undefined, undefined, "red", "blue", "yellow", Css$Css.rgb(250, 250, 250)))).toBe("conic-gradient(red, blue, yellow, rgb(250, 250, 250))");
                
              }));
        test("repeatingConicGradient", (function () {
                expect(CssString$Css.repeatingConicGradient(Css$Css.repeatingConicGradient(undefined, undefined, "red"))).toBe("repeating-conic-gradient(red)");
                expect(CssString$Css.repeatingConicGradient(Css$Css.repeatingConicGradient(Css$Css.deg(360), undefined, "red"))).toBe("repeating-conic-gradient(from 360deg, red)");
                expect(CssString$Css.repeatingConicGradient(Css$Css.repeatingConicGradient(Css$Css.deg(360), Css$Css.px(10), "red"))).toBe("repeating-conic-gradient(from 360deg at 10px, red)");
                expect(CssString$Css.repeatingConicGradient(Css$Css.repeatingConicGradient2(undefined, undefined, "red", "blue"))).toBe("repeating-conic-gradient(red, blue)");
                expect(CssString$Css.repeatingConicGradient(Css$Css.repeatingConicGradient3(undefined, undefined, "red", "blue", "yellow"))).toBe("repeating-conic-gradient(red, blue, yellow)");
                expect(CssString$Css.repeatingConicGradient(Css$Css.repeatingConicGradient4(undefined, undefined, "red", "blue", "yellow", Css$Css.rgb(250, 250, 250)))).toBe("repeating-conic-gradient(red, blue, yellow, rgb(250, 250, 250))");
                
              }));
        test("gradient", (function () {
                expect(CssString$Css.gradient(Css$Css.linearGradient3(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.pct(30), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Css.gradient(Css$Css.linearGradient4(Css$Css.turn(0.25), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(10)), Css$Css.linearColorStop2(Css$Css.rgb(255, 255, 255), Css$Css.pct(40)), Css$Css.linearColorStop3(Css$Css.rgb(255, 255, 255), Css$Css.pct(50), Css$Css.pct(60)), Css$Css.linearColorStop3("red", Css$Css.pct(70), Css$Css.pct(100))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
                expect(CssString$Css.gradient(Css$Css.repeatingLinearGradient(Css$Css.deg(360), "red"))).toBe("repeating-linear-gradient(360deg, red)");
                expect(CssString$Css.gradient(Css$Css.radialGradient("center", "circle", undefined, Css$Css.rgbX("9198e5")))).toBe("radial-gradient(circle at center, #9198e5)");
                expect(CssString$Css.gradient(Css$Css.repeatingRadialGradient("center", "circle", Css$Css.px(10), Css$Css.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle 10px at center, #9198e5)");
                expect(CssString$Css.gradient(Css$Css.conicGradient(Css$Css.deg(360), Css$Css.px(10), "red"))).toBe("conic-gradient(from 360deg at 10px, red)");
                expect(CssString$Css.gradient(Css$Css.repeatingConicGradient(Css$Css.deg(360), Css$Css.px(10), "red"))).toBe("repeating-conic-gradient(from 360deg at 10px, red)");
                
              }));
        test("url", (function () {
                expect(CssString$Css.url(Css$Css.url("myimage.png"))).toBe("url(\"myimage.png\")");
                
              }));
        test("imageSrc", (function () {
                expect(CssString$Css.imageSrc(Css$Css.url("myimage.png"))).toBe("url(\"myimage.png\")");
                expect(CssString$Css.imageSrc(Css$Css.src("myimage.png"))).toBe("\"myimage.png\"");
                
              }));
        test("image", (function () {
                expect(CssString$Css.image(Css$Css.image(undefined, undefined, Css$Css.src("myimage.webp#xywh=0,20,40,60")))).toBe("image(\"myimage.webp#xywh=0,20,40,60\")");
                expect(CssString$Css.image(Css$Css.image(undefined, undefined, Css$Css.url("myimage.png")))).toBe("image(url(\"myimage.png\"))");
                expect(CssString$Css.image(Css$Css.image(undefined, undefined, Css$Css.rgba(0, 0, 0, 0.25)))).toBe("image(rgba(0, 0, 0, 0.25))");
                expect(CssString$Css.image(Css$Css.image(undefined, Css$Css.rgba(0, 0, 0, 0.25), "red"))).toBe("image(red)");
                expect(CssString$Css.image(Css$Css.image("ltr", undefined, Css$Css.src("myimage.png")))).toBe("image(ltr \"myimage.png\")");
                expect(CssString$Css.image(Css$Css.image("ltr", "red", Css$Css.src("myimage.png")))).toBe("image(ltr \"myimage.png\", red)");
                
              }));
        test("bgSize", (function () {
                expect(CssString$Css.bgSize("cover")).toBe("cover");
                expect(CssString$Css.bgSize(Css$Css.px(24))).toBe("24px");
                expect(CssString$Css.bgSize(Css$Css.bgSize2("auto", Css$Css.px(24)))).toBe("auto 24px");
                expect(CssString$Css.bgSize(Css$Css.bgSize2(Css$Css.px(24), Css$Css.px(24)))).toBe("24px 24px");
                
              }));
        test("position", (function () {
                expect(CssString$Css.position("center")).toBe("center");
                expect(CssString$Css.position(Css$Css.px(20))).toBe("20px");
                expect(CssString$Css.position(Css$Css.position2("left", "top"))).toBe("left top");
                expect(CssString$Css.position(Css$Css.position3("left", "top", Css$Css.pct(10)))).toBe("left top 10%");
                expect(CssString$Css.position(Css$Css.position3("left", Css$Css.pct(20), "bottom"))).toBe("left 20% bottom");
                expect(CssString$Css.position(Css$Css.position4("right", Css$Css.pct(35), "bottom", Css$Css.pct(45)))).toBe("right 35% bottom 45%");
                
              }));
        
      }));

describe("background", (function () {
        test("background", (function () {
                expect(CssString$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "red")).toBe("red");
                expect(CssString$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Css.rgb(255, 255, 255))).toBe("rgb(255, 255, 255)");
                expect(CssString$Css.background("red", undefined, undefined, undefined, undefined, undefined, undefined, Css$Css.rgb(255, 255, 255))).toBe("rgb(255, 255, 255)");
                expect(CssString$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Css.url("myimage.png"))).toBe("url(\"myimage.png\")");
                expect(CssString$Css.background(undefined, undefined, undefined, "repeat-y", undefined, undefined, undefined, Css$Css.url("test.jpg"))).toBe("url(\"test.jpg\") repeat-y");
                expect(CssString$Css.background(undefined, undefined, undefined, undefined, undefined, "border-box", undefined, "red")).toBe("red border-box");
                expect(CssString$Css.background(undefined, undefined, undefined, undefined, undefined, "border-box", "padding-box", "red")).toBe("red border-box padding-box");
                expect(CssString$Css.background(undefined, undefined, undefined, undefined, undefined, undefined, "padding-box", "red")).toBe("red");
                expect(CssString$Css.background(undefined, "center", Css$Css.pct(80), "no-repeat", undefined, undefined, undefined, Css$Css.url("../img/image.png"))).toBe("url(\"../img/image.png\") center / 80% no-repeat");
                expect(CssString$Css.background(undefined, undefined, Css$Css.pct(80), "no-repeat", undefined, undefined, undefined, Css$Css.url("../img/image.png"))).toBe("url(\"../img/image.png\") no-repeat");
                expect(CssString$Css.bgLayer("red")).toBe("red");
                expect(CssString$Css.bgLayer(Css$Css.url("myimage.png"))).toBe("url(\"myimage.png\")");
                expect(CssString$Css.bgLayer(Css$Css.bgLayer(undefined, undefined, undefined, "repeat-y", undefined, undefined, undefined, Css$Css.url("test.jpg")))).toBe("url(\"test.jpg\") repeat-y");
                expect(CssString$Css.bgLayer(Css$Css.bgLayer(undefined, "center", Css$Css.pct(80), "no-repeat", undefined, undefined, undefined, Css$Css.url("../img/image.png")))).toBe("url(\"../img/image.png\") center / 80% no-repeat");
                
              }));
        
      }));

describe("Spacing", (function () {
        test("margin", (function () {
                expect(CssString$Css.margin(Css$Css.px(10))).toBe("10px");
                expect(CssString$Css.margin("auto")).toBe("auto");
                expect(CssString$Css.margin(Css$Css.pct(20))).toBe("20%");
                expect(CssString$Css.margin_global(Css$Css.px(24))).toBe("24px");
                expect(CssString$Css.margin_global("initial")).toBe("initial");
                
              }));
        
      }));

/*  Not a pure module */
