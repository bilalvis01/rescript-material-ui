// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Css$Ress = require("../src/Css.js");
var CssString$Ress = require("../src/CssString.js");

describe("Numeric data types", (function () {
        test("number", (function () {
                expect(CssString$Ress.num(1)).toBe("1");
                expect(CssString$Ress.number(Css$Ress.num(1))).toBe("1");
                
              }));
        test("integer", (function () {
                expect(CssString$Ress.$$int(1)).toBe("1");
                expect(CssString$Ress.integer(Css$Ress.$$int(1))).toBe("1");
                
              }));
        test("percentage", (function () {
                expect(CssString$Ress.pct(1)).toBe("1%");
                expect(CssString$Ress.percentage(Css$Ress.pct(1))).toBe("1%");
                
              }));
        test("ratio", (function () {
                expect(CssString$Ress.ratio(Css$Ress.ratio(10, 10))).toBe("10/10");
                
              }));
        test("flex", (function () {
                expect(CssString$Ress.fr(1)).toBe("1fr");
                expect(CssString$Ress.flexUnit(Css$Ress.fr(1))).toBe("1fr");
                
              }));
        
      }));

describe("Quantities data types", (function () {
        test("length", (function () {
                expect(CssString$Ress.ch(1)).toBe("1ch");
                expect(CssString$Ress.em(1)).toBe("1em");
                expect(CssString$Ress.ex(1)).toBe("1ex");
                expect(CssString$Ress.rem(1)).toBe("1rem");
                expect(CssString$Ress.vh(1)).toBe("1vh");
                expect(CssString$Ress.vw(1)).toBe("1vw");
                expect(CssString$Ress.vmin(1)).toBe("1vmin");
                expect(CssString$Ress.vmax(1)).toBe("1vmax");
                expect(CssString$Ress.px(1)).toBe("1px");
                expect(CssString$Ress.cm(1)).toBe("1cm");
                expect(CssString$Ress.mm(1)).toBe("1mm");
                expect(CssString$Ress.inch(1)).toBe("1in");
                expect(CssString$Ress.pc(1)).toBe("1pc");
                expect(CssString$Ress.pt(1)).toBe("1pt");
                expect(CssString$Ress.length(Css$Ress.mm(1))).toBe("1mm");
                expect(CssString$Ress.length(Css$Ress.cm(1))).toBe("1cm");
                
              }));
        test("angle", (function () {
                expect(CssString$Ress.deg(1)).toBe("1deg");
                expect(CssString$Ress.grad(1)).toBe("1grad");
                expect(CssString$Ress.rad(1)).toBe("1rad");
                expect(CssString$Ress.turn(1)).toBe("1turn");
                expect(CssString$Ress.angle(Css$Ress.deg(1))).toBe("1deg");
                expect(CssString$Ress.angle(Css$Ress.grad(1))).toBe("1grad");
                
              }));
        test("time", (function () {
                expect(CssString$Ress.s(10)).toBe("10s");
                expect(CssString$Ress.ms(10)).toBe("10ms");
                expect(CssString$Ress.time(Css$Ress.s(10))).toBe("10s");
                expect(CssString$Ress.time(Css$Ress.ms(10))).toBe("10ms");
                
              }));
        test("frequency", (function () {
                expect(CssString$Ress.hz(50)).toBe("50Hz");
                expect(CssString$Ress.kHz(100)).toBe("100kHz");
                expect(CssString$Ress.kHz(-100)).toBe("-100kHz");
                expect(CssString$Ress.frequency(Css$Ress.hz(50))).toBe("50Hz");
                expect(CssString$Ress.frequency(Css$Ress.kHz(100))).toBe("100kHz");
                
              }));
        test("resolution", (function () {
                expect(CssString$Ress.dpi(1)).toBe("1dpi");
                expect(CssString$Ress.dpcm(1)).toBe("1dpcm");
                expect(CssString$Ress.dppx(1)).toBe("1dppx");
                expect(CssString$Ress.x(1)).toBe("1x");
                expect(CssString$Ress.resolution(Css$Ress.dpi(1))).toBe("1dpi");
                
              }));
        
      }));

describe("Combination data types", (function () {
        test("length_percentage", (function () {
                expect(CssString$Ress.length_percentage(Css$Ress.mm(1))).toBe("1mm");
                expect(CssString$Ress.length_percentage(Css$Ress.pct(1))).toBe("1%");
                
              }));
        test("frequency_percentage", (function () {
                expect(CssString$Ress.frequency_percentage(Css$Ress.hz(1))).toBe("1Hz");
                expect(CssString$Ress.frequency_percentage(Css$Ress.pct(1))).toBe("1%");
                
              }));
        test("angle_percentage", (function () {
                expect(CssString$Ress.angle_percentage(Css$Ress.deg(1))).toBe("1deg");
                expect(CssString$Ress.angle_percentage(Css$Ress.pct(1))).toBe("1%");
                
              }));
        test("time_percentage", (function () {
                expect(CssString$Ress.time_percentage(Css$Ress.s(1))).toBe("1s");
                expect(CssString$Ress.time_percentage(Css$Ress.pct(1))).toBe("1%");
                
              }));
        
      }));

describe("Color data types", (function () {
        test("color", (function () {
                expect(CssString$Ress.hue(Css$Ress.deg(1))).toBe("1deg");
                expect(CssString$Ress.alpha(Css$Ress.pct(1))).toBe("1%");
                expect(CssString$Ress.alpha(Css$Ress.num(1))).toBe("1");
                expect(CssString$Ress.rgbParam(Css$Ress.pct(1))).toBe("1%");
                expect(CssString$Ress.rgbParam(Css$Ress.num(1))).toBe("1");
                expect(CssString$Ress.rgb(Css$Ress.num(1), Css$Ress.num(1), Css$Ress.pct(10))).toBe("rgb(1, 1, 10%)");
                expect(CssString$Ress.rgba(Css$Ress.num(1), Css$Ress.num(1), Css$Ress.pct(10), Css$Ress.num(1))).toBe("rgba(1, 1, 10%, 1)");
                expect(CssString$Ress.rgba(Css$Ress.num(0), Css$Ress.num(0), Css$Ress.num(0), Css$Ress.num(1))).toBe("rgba(0, 0, 0, 1)");
                expect(CssString$Ress.rgbX("000000")).toBe("#000000");
                expect(CssString$Ress.color(Css$Ress.rgbX("000000"))).toBe("#000000");
                expect(CssString$Ress.color(Css$Ress.rgb(10, 10, 10))).toBe("rgb(10, 10, 10)");
                
              }));
        test("color_global", (function () {
                expect(CssString$Ress.color_global(Css$Ress.rgb(244, 244, 244))).toBe("rgb(244, 244, 244)");
                expect(CssString$Ress.color_global("initial")).toBe("initial");
                
              }));
        
      }));

describe("Line", (function () {
        test("lineWidth", (function () {
                expect(CssString$Ress.lineWidth("thick")).toBe("thick");
                expect(CssString$Ress.lineWidth(Css$Ress.mm(10))).toBe("10mm");
                
              }));
        test("lineWidth", (function () {
                expect(CssString$Ress.lineWidth_global("thick")).toBe("thick");
                expect(CssString$Ress.lineWidth_global("initial")).toBe("initial");
                
              }));
        
      }));

describe("transformOrigin", (function () {
        test("transformOrigin", (function () {
                expect(CssString$Ress.transformOrigin("left")).toBe("left");
                expect(CssString$Ress.transformOrigin(Css$Ress.px(20))).toBe("20px");
                expect(CssString$Ress.transformOrigin({
                            NAME: "transformOrigin2",
                            VAL: [
                              "left",
                              "top"
                            ]
                          })).toBe("left top");
                expect(CssString$Ress.transformOrigin({
                            NAME: "transformOrigin3",
                            VAL: [
                              "left",
                              "top",
                              Css$Ress.px(10)
                            ]
                          })).toBe("left top 10px");
                
              }));
        
      }));

describe("Image data types", (function () {
        test("gradientLineDirection", (function () {
                expect(CssString$Ress.gradientLineAngle("to top")).toBe("to top");
                expect(CssString$Ress.gradientLineAngle("to top left")).toBe("to top left");
                expect(CssString$Ress.gradientLineAngle(Css$Ress.turn(0.25))).toBe("0.25turn");
                
              }));
        test("linearColorStop", (function () {
                expect(CssString$Ress.linearColorStop("red")).toBe("red");
                expect(CssString$Ress.linearColorStop(Css$Ress.rgb(255, 255, 255))).toBe("rgb(255, 255, 255)");
                expect(CssString$Ress.linearColorStop(Css$Ress.pct(10))).toBe("10%");
                expect(CssString$Ress.linearColorStop(Css$Ress.px(25))).toBe("25px");
                expect(CssString$Ress.linearColorStop(Css$Ress.linearColorStop2("red", Css$Ress.pct(10)))).toBe("red 10%");
                expect(CssString$Ress.linearColorStop(Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10), Css$Ress.pct(50)))).toBe("rgb(255, 255, 255) 10% 50%");
                
              }));
        test("linearGradient", (function () {
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient(undefined, Css$Ress.rgb(0, 0, 0)))).toBe("linear-gradient(rgb(0, 0, 0))");
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient(Css$Ress.turn(0.25), Css$Ress.rgb(0, 0, 0)))).toBe("linear-gradient(0.25turn, rgb(0, 0, 0))");
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient2(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient3(undefined, Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40)), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60))))).toBe("linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient3(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40)), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient3(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.pct(30), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Ress.linearGradient(Css$Ress.linearGradient4(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40)), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60)), Css$Ress.linearColorStop3("red", Css$Ress.pct(70), Css$Ress.pct(100))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
                
              }));
        test("repeatingLinearGradient", (function () {
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient(undefined, Css$Ress.rgb(0, 0, 0)))).toBe("repeating-linear-gradient(rgb(0, 0, 0))");
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient(Css$Ress.turn(0.25), Css$Ress.rgb(0, 0, 0)))).toBe("repeating-linear-gradient(0.25turn, rgb(0, 0, 0))");
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%)");
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient2(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%)");
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient3(undefined, Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40)), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60))))).toBe("repeating-linear-gradient(rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient3(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40)), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient3(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.pct(30), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Ress.repeatingLinearGradient(Css$Ress.repeatingLinearGradient4(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40)), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60)), Css$Ress.linearColorStop3("red", Css$Ress.pct(70), Css$Ress.pct(100))))).toBe("repeating-linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
                
              }));
        test("radialGradient", (function () {
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient(undefined, undefined, undefined, Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(#9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient(undefined, "circle", undefined, Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(circle, #9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient("center", "circle", undefined, Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(circle at center, #9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient("center", "circle", Css$Ress.px(10), Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(circle 10px at center, #9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient("center", "ellipse", Css$Ress.px(10), Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient("center", undefined, {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Ress.px(10),
                                  Css$Ress.px(10)
                                ]
                              }, Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(10px 10px at center, #9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient("center", "ellipse", {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Ress.px(10),
                                  Css$Ress.px(10)
                                ]
                              }, Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(ellipse 10px 10px at center, #9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient("center", "ellipse", Css$Ress.px(10), Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient2(undefined, "circle", undefined, Css$Ress.rgbX("9198e5"), "red"))).toBe("radial-gradient(circle, #9198e5, red)");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient3(undefined, "circle", undefined, Css$Ress.rgbX("9198e5"), "red", Css$Ress.rgb(255, 255, 255)))).toBe("radial-gradient(circle, #9198e5, red, rgb(255, 255, 255))");
                expect(CssString$Ress.radialGradient(Css$Ress.radialGradient4(undefined, "circle", undefined, Css$Ress.rgbX("9198e5"), "red", Css$Ress.rgb(255, 255, 255), Css$Ress.linearColorStop2("blue", Css$Ress.pct(10))))).toBe("radial-gradient(circle, #9198e5, red, rgb(255, 255, 255), blue 10%)");
                
              }));
        test("repeatingRadialGradient", (function () {
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient(undefined, undefined, undefined, Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(#9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient(undefined, "circle", undefined, Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle, #9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient("center", "circle", undefined, Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle at center, #9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient("center", "circle", Css$Ress.px(10), Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle 10px at center, #9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient("center", "ellipse", Css$Ress.px(10), Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient("center", undefined, {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Ress.px(10),
                                  Css$Ress.px(10)
                                ]
                              }, Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(10px 10px at center, #9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient("center", "ellipse", {
                                NAME: "ellipse",
                                VAL: [
                                  Css$Ress.px(10),
                                  Css$Ress.px(10)
                                ]
                              }, Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(ellipse 10px 10px at center, #9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient("center", "ellipse", Css$Ress.px(10), Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(ellipse at center, #9198e5)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient2(undefined, "circle", undefined, Css$Ress.rgbX("9198e5"), "red"))).toBe("repeating-radial-gradient(circle, #9198e5, red)");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient3(undefined, "circle", undefined, Css$Ress.rgbX("9198e5"), "red", Css$Ress.rgb(255, 255, 255)))).toBe("repeating-radial-gradient(circle, #9198e5, red, rgb(255, 255, 255))");
                expect(CssString$Ress.repeatingRadialGradient(Css$Ress.repeatingRadialGradient4(undefined, "circle", undefined, Css$Ress.rgbX("9198e5"), "red", Css$Ress.rgb(255, 255, 255), Css$Ress.linearColorStop2("blue", Css$Ress.pct(10))))).toBe("repeating-radial-gradient(circle, #9198e5, red, rgb(255, 255, 255), blue 10%)");
                
              }));
        test("conicGradient", (function () {
                expect(CssString$Ress.conicGradient(Css$Ress.conicGradient(undefined, undefined, "red"))).toBe("conic-gradient(red)");
                expect(CssString$Ress.conicGradient(Css$Ress.conicGradient(Css$Ress.deg(360), undefined, "red"))).toBe("conic-gradient(from 360deg, red)");
                expect(CssString$Ress.conicGradient(Css$Ress.conicGradient(Css$Ress.deg(360), Css$Ress.px(10), "red"))).toBe("conic-gradient(from 360deg at 10px, red)");
                expect(CssString$Ress.conicGradient(Css$Ress.conicGradient2(undefined, undefined, "red", "blue"))).toBe("conic-gradient(red, blue)");
                expect(CssString$Ress.conicGradient(Css$Ress.conicGradient3(undefined, undefined, "red", "blue", "yellow"))).toBe("conic-gradient(red, blue, yellow)");
                expect(CssString$Ress.conicGradient(Css$Ress.conicGradient4(undefined, undefined, "red", "blue", "yellow", Css$Ress.rgb(250, 250, 250)))).toBe("conic-gradient(red, blue, yellow, rgb(250, 250, 250))");
                
              }));
        test("repeatingConicGradient", (function () {
                expect(CssString$Ress.repeatingConicGradient(Css$Ress.repeatingConicGradient(undefined, undefined, "red"))).toBe("repeating-conic-gradient(red)");
                expect(CssString$Ress.repeatingConicGradient(Css$Ress.repeatingConicGradient(Css$Ress.deg(360), undefined, "red"))).toBe("repeating-conic-gradient(from 360deg, red)");
                expect(CssString$Ress.repeatingConicGradient(Css$Ress.repeatingConicGradient(Css$Ress.deg(360), Css$Ress.px(10), "red"))).toBe("repeating-conic-gradient(from 360deg at 10px, red)");
                expect(CssString$Ress.repeatingConicGradient(Css$Ress.repeatingConicGradient2(undefined, undefined, "red", "blue"))).toBe("repeating-conic-gradient(red, blue)");
                expect(CssString$Ress.repeatingConicGradient(Css$Ress.repeatingConicGradient3(undefined, undefined, "red", "blue", "yellow"))).toBe("repeating-conic-gradient(red, blue, yellow)");
                expect(CssString$Ress.repeatingConicGradient(Css$Ress.repeatingConicGradient4(undefined, undefined, "red", "blue", "yellow", Css$Ress.rgb(250, 250, 250)))).toBe("repeating-conic-gradient(red, blue, yellow, rgb(250, 250, 250))");
                
              }));
        test("gradient", (function () {
                expect(CssString$Ress.gradient(Css$Ress.linearGradient3(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.pct(30), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, 30%, rgb(255, 255, 255) 50% 60%)");
                expect(CssString$Ress.gradient(Css$Ress.linearGradient4(Css$Ress.turn(0.25), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(10)), Css$Ress.linearColorStop2(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(40)), Css$Ress.linearColorStop3(Css$Ress.rgb(255, 255, 255), Css$Ress.pct(50), Css$Ress.pct(60)), Css$Ress.linearColorStop3("red", Css$Ress.pct(70), Css$Ress.pct(100))))).toBe("linear-gradient(0.25turn, rgb(255, 255, 255) 10%, rgb(255, 255, 255) 40%, rgb(255, 255, 255) 50% 60%, red 70% 100%)");
                expect(CssString$Ress.gradient(Css$Ress.repeatingLinearGradient(Css$Ress.deg(360), "red"))).toBe("repeating-linear-gradient(360deg, red)");
                expect(CssString$Ress.gradient(Css$Ress.radialGradient("center", "circle", undefined, Css$Ress.rgbX("9198e5")))).toBe("radial-gradient(circle at center, #9198e5)");
                expect(CssString$Ress.gradient(Css$Ress.repeatingRadialGradient("center", "circle", Css$Ress.px(10), Css$Ress.rgbX("9198e5")))).toBe("repeating-radial-gradient(circle 10px at center, #9198e5)");
                expect(CssString$Ress.gradient(Css$Ress.conicGradient(Css$Ress.deg(360), Css$Ress.px(10), "red"))).toBe("conic-gradient(from 360deg at 10px, red)");
                expect(CssString$Ress.gradient(Css$Ress.repeatingConicGradient(Css$Ress.deg(360), Css$Ress.px(10), "red"))).toBe("repeating-conic-gradient(from 360deg at 10px, red)");
                
              }));
        test("url", (function () {
                expect(CssString$Ress.url(Css$Ress.url("myimage.png"))).toBe("url(\"myimage.png\")");
                
              }));
        test("imageSrc", (function () {
                expect(CssString$Ress.imageSrc(Css$Ress.url("myimage.png"))).toBe("url(\"myimage.png\")");
                expect(CssString$Ress.imageSrc(Css$Ress.src("myimage.png"))).toBe("\"myimage.png\"");
                
              }));
        test("image", (function () {
                expect(CssString$Ress.image(Css$Ress.image(undefined, undefined, Css$Ress.src("myimage.webp#xywh=0,20,40,60")))).toBe("image(\"myimage.webp#xywh=0,20,40,60\")");
                expect(CssString$Ress.image(Css$Ress.image(undefined, undefined, Css$Ress.url("myimage.png")))).toBe("image(url(\"myimage.png\"))");
                expect(CssString$Ress.image(Css$Ress.image(undefined, undefined, Css$Ress.rgba(0, 0, 0, 0.25)))).toBe("image(rgba(0, 0, 0, 0.25))");
                expect(CssString$Ress.image(Css$Ress.image(undefined, Css$Ress.rgba(0, 0, 0, 0.25), "red"))).toBe("image(red)");
                expect(CssString$Ress.image(Css$Ress.image("ltr", undefined, Css$Ress.src("myimage.png")))).toBe("image(ltr \"myimage.png\")");
                expect(CssString$Ress.image(Css$Ress.image("ltr", "red", Css$Ress.src("myimage.png")))).toBe("image(ltr \"myimage.png\", red)");
                
              }));
        test("bgSize", (function () {
                expect(CssString$Ress.bgSize("cover")).toBe("cover");
                expect(CssString$Ress.bgSize(Css$Ress.px(24))).toBe("24px");
                expect(CssString$Ress.bgSize(Css$Ress.bgSize2("auto", Css$Ress.px(24)))).toBe("auto 24px");
                expect(CssString$Ress.bgSize(Css$Ress.bgSize2(Css$Ress.px(24), Css$Ress.px(24)))).toBe("24px 24px");
                
              }));
        test("position", (function () {
                expect(CssString$Ress.position("center")).toBe("center");
                expect(CssString$Ress.position(Css$Ress.px(20))).toBe("20px");
                expect(CssString$Ress.position(Css$Ress.position2("left", "top"))).toBe("left top");
                expect(CssString$Ress.position(Css$Ress.position3("left", "top", Css$Ress.pct(10)))).toBe("left top 10%");
                expect(CssString$Ress.position(Css$Ress.position3("left", Css$Ress.pct(20), "bottom"))).toBe("left 20% bottom");
                expect(CssString$Ress.position(Css$Ress.position4("right", Css$Ress.pct(35), "bottom", Css$Ress.pct(45)))).toBe("right 35% bottom 45%");
                
              }));
        
      }));

describe("background", (function () {
        test("background", (function () {
                expect(CssString$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "red")).toBe("red");
                expect(CssString$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Ress.rgb(255, 255, 255))).toBe("rgb(255, 255, 255)");
                expect(CssString$Ress.background("red", undefined, undefined, undefined, undefined, undefined, undefined, Css$Ress.rgb(255, 255, 255))).toBe("rgb(255, 255, 255)");
                expect(CssString$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Ress.url("myimage.png"))).toBe("url(\"myimage.png\")");
                expect(CssString$Ress.background(undefined, undefined, undefined, "repeat-y", undefined, undefined, undefined, Css$Ress.url("test.jpg"))).toBe("url(\"test.jpg\") repeat-y");
                expect(CssString$Ress.background(undefined, undefined, undefined, undefined, undefined, "border-box", undefined, "red")).toBe("red border-box");
                expect(CssString$Ress.background(undefined, undefined, undefined, undefined, undefined, "border-box", "padding-box", "red")).toBe("red border-box padding-box");
                expect(CssString$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, "padding-box", "red")).toBe("red");
                expect(CssString$Ress.background(undefined, "center", Css$Ress.pct(80), "no-repeat", undefined, undefined, undefined, Css$Ress.url("../img/image.png"))).toBe("url(\"../img/image.png\") center / 80% no-repeat");
                expect(CssString$Ress.background(undefined, undefined, Css$Ress.pct(80), "no-repeat", undefined, undefined, undefined, Css$Ress.url("../img/image.png"))).toBe("url(\"../img/image.png\") no-repeat");
                expect(CssString$Ress.bgLayer("red")).toBe("red");
                expect(CssString$Ress.bgLayer(Css$Ress.url("myimage.png"))).toBe("url(\"myimage.png\")");
                expect(CssString$Ress.bgLayer(Css$Ress.bgLayer(undefined, undefined, undefined, "repeat-y", undefined, undefined, undefined, Css$Ress.url("test.jpg")))).toBe("url(\"test.jpg\") repeat-y");
                expect(CssString$Ress.bgLayer(Css$Ress.bgLayer(undefined, "center", Css$Ress.pct(80), "no-repeat", undefined, undefined, undefined, Css$Ress.url("../img/image.png")))).toBe("url(\"../img/image.png\") center / 80% no-repeat");
                
              }));
        
      }));

describe("Spacing", (function () {
        test("margin", (function () {
                expect(CssString$Ress.margin(Css$Ress.px(10))).toBe("10px");
                expect(CssString$Ress.margin("auto")).toBe("auto");
                expect(CssString$Ress.margin(Css$Ress.pct(20))).toBe("20%");
                expect(CssString$Ress.margin_global(Css$Ress.px(24))).toBe("24px");
                expect(CssString$Ress.margin_global("initial")).toBe("initial");
                
              }));
        test("padding", (function () {
                expect(CssString$Ress.padding(Css$Ress.px(10))).toBe("10px");
                expect(CssString$Ress.padding(Css$Ress.pct(20))).toBe("20%");
                expect(CssString$Ress.padding_global(Css$Ress.px(24))).toBe("24px");
                expect(CssString$Ress.padding_global("initial")).toBe("initial");
                
              }));
        
      }));

/*  Not a pure module */