// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Css$Ress = require("../src/Css.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var CssColor$Ress = require("../src/property_value/CssColor.js");
var CssBorder$Ress = require("../src/property_value/CssBorder.js");
var CssFontFace$Ress = require("../src/CssFontFace.js");

test("style", (function () {
        expect({
                wrapper: Curry._1(Css$Ress.style, [
                      Css$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Ress.url("image.png")),
                      Css$Ress.color(Css$Ress.rgb(255, 255, 255)),
                      Css$Ress.paddingTop(Css$Ress.px(24)),
                      Css$Ress.paddingBottom(Css$Ress.px(24)),
                      Css$Ress.paddingLeft(Css$Ress.px(40)),
                      Css$Ress.paddingRight(Css$Ress.px(40)),
                      Css$Ress.marginNumber(24),
                      Css$Ress.borderUnion(CssBorder$Ress.value(Css$Ress.px(2), Css$Ress.rgb(200, 200, 200), "solid"))
                    ]),
                button: Curry._1(Css$Ress.style, [
                      Css$Ress.color(Css$Ress.hsla(Css$Ress.deg(360), Css$Ress.pct(100), Css$Ress.pct(50), 0.5)),
                      Curry._1(Css$Ress.hover, [Css$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "blue")])
                    ]),
                "@font-face": CssFontFace$Ress.descriptors([CssFontFace$Ress.fontDisplay("auto")])
              }).toEqual({
              wrapper: {
                background: "url(\"image.png\")",
                color: "rgb(255, 255, 255)",
                paddingTop: "24px",
                paddingBottom: "24px",
                paddingLeft: "40px",
                paddingRight: "40px",
                margin: 24,
                border: "2px rgb(200, 200, 200) solid"
              },
              button: {
                color: "hsla(360deg, 100%, 50%, 0.5)",
                "&:hover": {
                  background: "blue"
                }
              },
              "@font-face": {
                fontDisplay: "auto"
              }
            });
        
      }));

test("styles", (function () {
        var colorFunction = function (data) {
          return Caml_option.some(CssColor$Ress.value(data.color));
        };
        var marginFunction = function (data) {
          return Caml_option.some(data.space);
        };
        var styles = Curry._1(Css$Ress.styles, [
              Curry._2(Css$Ress.selector, "wrapper", [
                    Css$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, Css$Ress.url("image.png")),
                    Css$Ress.color(Css$Ress.rgb(255, 255, 255)),
                    Css$Ress.paddingTop(Css$Ress.px(24)),
                    Css$Ress.paddingBottom(Css$Ress.px(24)),
                    Css$Ress.paddingLeft(Css$Ress.px(40)),
                    Css$Ress.paddingRight(Css$Ress.px(40)),
                    Css$Ress.marginNumber(24)
                  ]),
              Curry._2(Css$Ress.selector, "tab", [
                    Css$Ress.colorFn(colorFunction),
                    Css$Ress.marginFn(marginFunction)
                  ]),
              Curry._2(Css$Ress.selector, "button", [
                    Css$Ress.color(Css$Ress.hsla(Css$Ress.deg(360), Css$Ress.pct(100), Css$Ress.pct(50), 0.5)),
                    Curry._1(Css$Ress.hover, [Css$Ress.background(undefined, undefined, undefined, undefined, undefined, undefined, undefined, "blue")])
                  ]),
              Css$Ress.fontFace([CssFontFace$Ress.fontDisplay("auto")]),
              Curry._1(Css$Ress.hover, [Css$Ress.color("blue")])
            ]);
        expect(styles).toEqual({
              wrapper: {
                background: "url(\"image.png\")",
                color: "rgb(255, 255, 255)",
                paddingTop: "24px",
                paddingBottom: "24px",
                paddingLeft: "40px",
                paddingRight: "40px",
                margin: 24
              },
              button: {
                color: "hsla(360deg, 100%, 50%, 0.5)",
                "&:hover": {
                  background: "blue"
                }
              },
              tab: {
                color: colorFunction,
                margin: marginFunction
              },
              "@font-face": {
                fontDisplay: "auto"
              },
              "@global :hover": {
                color: "blue"
              }
            });
        
      }));

/*  Not a pure module */
